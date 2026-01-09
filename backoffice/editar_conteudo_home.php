<?php
require_once "bootstrap.php";
verificar_login();
$pagina = "editar_home";
$id = $_GET['id'];
$campo = $_GET['campo'];
$item = select_sql("SELECT * FROM home_conteudo WHERE id = ?", [$id])[0];

$valorAtual = $item[$campo] ?? '';


if (isset($_POST['valor'])) {
    $novoValor = strip_tags($_POST['valor']);
    
    idu_sql("UPDATE home_conteudo SET $campo = ? WHERE id = ?", [$novoValor, $id]);

    header("Location: editar_home.php?sucesso=1");
    exit;
}
require_once "components/header.php";
?>
<form method="POST" class="caixa">
    <h1>Editar <?= htmlspecialchars($campo) ?></h1>
    <textarea name="valor" id="editor"><?= htmlspecialchars($valorAtual) ?></textarea>
    <br>
    <a href="editar_home.php" class="btn btn-secondary mt-2">Cancelar</a>
    <button type="submit" class="btn btn-dark mt-2">Guardar</button>
    
</form>


