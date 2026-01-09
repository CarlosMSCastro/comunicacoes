<?php
require_once "bootstrap.php";
verificar_login();
$pagina = "editar_empresa";

if (isset($_POST['delete_id'])) {
    $idEliminar = $_POST['delete_id'];

    // Buscar id_navbar correspondente
    $id_navbar = select_sql("SELECT id_navbar FROM paginas_empresa WHERE id = ?", [$idEliminar])[0]['id_navbar'] ?? null;

    // Eliminar da tabela paginas_empresa
    idu_sql("DELETE FROM paginas_empresa WHERE id = ?", [$idEliminar]);

    // Eliminar também da tabela navbar, se existir
    if ($id_navbar) {
        idu_sql("DELETE FROM navbar WHERE id = ?", [$id_navbar]);
    }

    header("Location: editar_empresa.php?sucesso=1");
    exit;
}


$paginas = select_sql("SELECT * FROM paginas_empresa ORDER BY id");

$mensagem_sucesso = '';
if (!empty($_SESSION['mensagem_sucesso'])) {
    $mensagem_sucesso = $_SESSION['mensagem_sucesso'];
    unset($_SESSION['mensagem_sucesso']);
}

require_once "components/header.php";
?>
<div class="caixa">
    <h3>Páginas Empresa</h3>

    <?php if ($mensagem_sucesso): ?>
        <div class="alert alert-success"><?= htmlspecialchars($mensagem_sucesso) ?></div>
    <?php endif; ?>

    <div class="mb-3">
        <a href="editar_conteudo_empresa.php" class="btn btn-dark">Adicionar Novo</a>
    </div>

    <table class="table table-bordered align-middle text-start">
        <thead>
            <tr>
                <th>ID</th>
                <th>Título</th>
                <th>Texto</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($paginas as $paginaItem): ?>
            <tr>
                <td><?= $paginaItem['id'] ?></td>
                <td><?= htmlspecialchars($paginaItem['titulo_h1']) ?></td>
                <td><?= nl2br(htmlspecialchars(mb_strimwidth($paginaItem['texto'], 0, 200, '...'))) ?></td>
                <td>
                    <a href="editar_conteudo_empresa.php?id=<?= $paginaItem['id'] ?>" class="btn btn-dark btn-sm">Editar</a>

                    <form method="post" style="display:inline;">
                        <input type="hidden" name="delete_id" value="<?= $paginaItem['id'] ?>">
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Eliminar esta página?');">Eliminar</button>
                    </form>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<?php require_once "components/footer.php"; ?>