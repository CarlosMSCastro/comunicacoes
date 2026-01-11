<?php
require_once "bootstrap.php";
verificar_login();

$mensagemSucesso = '';
$pagina = "editar_home";
$activeTab = $_GET['tab'] ?? 'carousel';

// --- Processar TODOS os POSTs ---
if (!empty($_POST)) {
    
    // ATUALIZAR CONTEÚDO 
    if (isset($_POST['id']) && isset($_POST['titulo_h1'])) {
        $id = $_POST['id'];
        $titulo_h1 = strip_tags($_POST['titulo_h1'] ?? '');
        $titulo_h2 = strip_tags($_POST['titulo_h2'] ?? '');
        $texto = $_POST['texto'] ?? '';
        
        idu_sql("UPDATE home_conteudo SET titulo_h1 = ?, titulo_h2 = ?, texto = ? WHERE id = ?", [$titulo_h1, $titulo_h2, $texto, $id]);
        $mensagemSucesso = "Conteúdo atualizado com sucesso!";
    }
    
    // ATIVAR/DESATIVAR imagem carousel
    elseif (isset($_POST['id']) && isset($_POST['ativo'])) {
        idu_sql("UPDATE carousel_topo SET ativo = ? WHERE id = ?", [1, $_POST['id']]);
        $mensagemSucesso = "Imagem ativada com sucesso!";
    } 
    elseif (isset($_POST['id'])) {
        idu_sql("UPDATE carousel_topo SET ativo = ? WHERE id = ?", [0, $_POST['id']]);
        $mensagemSucesso = "Imagem desativada com sucesso!";
    }
    
    // ELIMINAR imagem carousel
    if (isset($_POST['delete_id'])) {
        $item = select_sql_unico("SELECT imagem FROM carousel_topo WHERE id = ?", [$_POST['delete_id']]);
        if ($item) {
            idu_sql("DELETE FROM carousel_topo WHERE id = ?", [$_POST['delete_id']]);
            $mensagemSucesso = "Imagem eliminada com sucesso!";
        }
    }
    
    // ADICIONAR nova imagem carousel
    if (isset($_POST['nova_imagem']) && !empty($_POST['nova_imagem'])) {
        $imagem = "backoffice/uploads/" . basename($_POST['nova_imagem']);
        $data = date('Y-m-d H:i:s');
        idu_sql("INSERT INTO carousel_topo (imagem, ativo, data_insercao) VALUES (?, ?, ?)", [$imagem, 1, $data]);
        $mensagemSucesso = "Imagem adicionada ao Carousel!";
    }
}

// Selecionar dados 
$carouselItems = select_sql("SELECT * FROM carousel_topo ORDER BY data_insercao");
$conteudoItems = select_sql("SELECT * FROM home_conteudo");
$carousel = select_sql("SELECT * FROM carousel_topo");

// ADICIONAR imagem da galeria ao carousel
if (isset($_POST['add_from_gallery'])) {
    $filename = basename($_POST['add_from_gallery']);
    $imagem = "backoffice/uploads/" . $filename;
    $data = date('Y-m-d H:i:s');
    idu_sql("INSERT INTO carousel_topo (imagem, ativo, data_insercao) VALUES (?, ?, ?)", [$imagem, 1, $data]);
    $mensagemSucesso = "Imagem adicionada ao Carousel!";
}

// Procurar imagens já no carousel
$imagensNoCarousel = array_column($carousel, 'imagem');

$uploadsPath = __DIR__ . '/uploads/';
$todasImagens = [];

if (is_dir($uploadsPath)) {
    foreach (scandir($uploadsPath) as $file) {
        $partes = explode('.', $file);
        $ext = strtolower(end($partes));

        switch ($ext) {
            case 'jpg':
            case 'jpeg':
            case 'png':
            case 'gif':
            case 'webp':
            case 'svg':
                $todasImagens[] = $file;
                break;
        }
    }
}

require_once "components/header.php";
?>

<?php if($mensagemSucesso): ?>
  <div class="alert alert-success fw-bold">
    <?= htmlspecialchars($mensagemSucesso) ?>
  </div>
<?php endif; ?>




<div class="container-fluid pt-4">
  <div class="row">
    <div class="col-12">
      <div class="card shadow-lg border-0 "style="background-color: rgba(255, 255, 255, 0.80) !important;">
        <div class="card-header bg-dark text-white">
          <h3 class="mb-0 fw-bold">Conteúdo</h3>
        </div>
        <div class="card-body p-4">

          <?php foreach ($conteudoItems as $item): ?>
            <div class="card mb-4 shadow-sm">
              <div class="card-body">
                <form method="POST" class="conteudo-form">
                  <input type="hidden" name="id" value="<?= $item['id'] ?>">
                  
                  <div class="row g-3">
                    <!-- TÍTULO -->
                    <div class="col-md-4">
                      <label class="form-label fw-bold text-dark">Título</label>
                      <input type="text" name="titulo_h1" class="form-control" value="<?= htmlspecialchars($item['titulo_h1']) ?>">
                    </div>

                    <!-- SUBTÍTULO -->
                    <div class="col-md-4">
                      <label class="form-label fw-bold text-dark">Subtítulo</label>
                      <input type="text" name="titulo_h2" class="form-control" value="<?= htmlspecialchars($item['titulo_h2']) ?>">
                    </div>

                    <!-- BOTÃO GUARDAR -->
                    <div class="col-md-4 d-flex align-items-end">
                      <button type="submit" class="btn btn-dark w-100">Guardar Alterações</button>
                    </div>
                  </div>

                  <!-- TEXTO COM CKEDITOR -->
                  <div class="mt-3">
                    <label class="form-label fw-bold text-dark">Texto</label>
                    <textarea name="texto" id="editor-<?= $item['id'] ?>" class="form-control ckeditor" rows="8"><?= htmlspecialchars($item['texto']) ?></textarea>
                  </div>

                </form>
              </div>
            </div>
          <?php endforeach; ?>

        </div>
      </div>
    </div>
  </div>
</div>

<div class="container-fluid py-4 mx-auto" >
  <div class="pb-4 card shadow-lg border-0"style="background-color: rgba(255, 255, 255, 0.95) !important;">

    <!-- HEADER -->
    <div class="card-header bg-dark text-white d-flex justify-content-between align-items-center">
      <h3 class="mb-0 fw-bold">Gestão do Carousel</h3>
      <button class="btn btn-light btn-sm" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTFM">
        📁 Gerir Ficheiros
      </button>

      <div class="offcanvas offcanvas-end" id="offcanvasTFM">
        <div class="offcanvas-header">
          <h5>Gestor de Ficheiros</h5>
          <button class="btn-close" data-bs-dismiss="offcanvas"></button>
        </div>
        <div class="offcanvas-body p-0">
          <iframe src="tfm/tinyfilemanager.php" style="width:100%;height:100%;border:0;"></iframe>
        </div>
      </div>

    </div>

    <!-- BODY -->
    <div class="card-body">

      <!-- TABS -->
      <ul class="nav nav-tabs mb-4">
        <li class="nav-item">
          <button class="nav-link <?= $activeTab=='carousel'?'active':'' ?>" data-bs-toggle="tab" data-bs-target="#tab-carousel" type="button">
            Carousel Ativo (<?= count($carousel) ?>)
          </button>
        </li>
        <li class="nav-item">
          <button class="nav-link <?= $activeTab=='galeria'?'active':'' ?>" data-bs-toggle="tab" data-bs-target="#tab-galeria" type="button">
            + Adicionar Imagem
          </button>
        </li>
      </ul>

      <div class="tab-content">

        <!-- TAB 1 -->
        <div class="tab-pane fade show active py-3" id="tab-carousel">

          <!-- LARGURA CONTROLADA -->
          <div class="mx-auto py-2" style="max-width: 85%;">

            <?php if(empty($carousel)): ?>
              <div class="alert alert-warning">
                <strong>Nenhuma imagem no carousel.</strong>
                Clique na tab "Adicionar Imagem" para começar.
              </div>
            <?php else: ?>
              <?php foreach($carousel as $item): ?>
                <div class="card shadow-sm mb-3 <?= $item['ativo'] ? 'border-success border-2' : '' ?>">
                  <div class="card-body p-3">

                    <div class="d-flex gap-3 align-items-start">
                      <img src="/comunicacoes/<?= htmlspecialchars($item['imagem']) ?>" class="rounded flex-shrink-0" style="width:150px;height:100px;object-fit:cover;">

                      <div class="flex-grow-1">
                        <small class="text-muted d-block mb-1">
                          <?= date('d/m/Y H:i', strtotime($item['data_insercao'])) ?>
                        </small>

                        <span class="badge <?= $item['ativo'] ? 'bg-success' : 'bg-secondary' ?>">
                          <?= $item['ativo'] ? 'Ativo' : 'Inativo' ?>
                        </span>

                        <div class="d-flex gap-2 flex-wrap mt-2">
                          <form method="POST">
                            <input type="hidden" name="id" value="<?= $item['id'] ?>">
                            <?php if($item['ativo']): ?>
                              <button class="btn btn-sm btn-outline-secondary">Desativar</button>
                            <?php else: ?>
                              <input type="hidden" name="ativo" value="1">
                              <button class="btn btn-sm btn-success">Ativar</button>
                            <?php endif; ?>
                          </form>

                          <form method="POST">
                            <input type="hidden" name="delete_id" value="<?= $item['id'] ?>">
                            <button class="btn btn-sm btn-outline-danger" onclick="return confirm('Remover?');">
                              Remover
                            </button>
                          </form>
                        </div>
                      </div>

                    </div>

                  </div>
                </div>
              <?php endforeach; ?>
            <?php endif; ?>

          </div>
        </div>

        <!-- TAB 2 -->
      <div class="tab-pane fade galeria" id="tab-galeria">

          <!-- LARGURA CONTROLADA -->
          <div class="mx-auto pt-0">

            <?php if(empty($todasImagens)): ?>
              <div class="alert alert-info">
                <strong>Nenhuma imagem encontrada na pasta uploads.</strong>
                <a href="tfm/tinyfilemanager.php" target="_blank" class="alert-link">
                  Clique aqui para fazer upload
                </a>.
              </div>
            <?php else: ?>

              <div class="alert alert-info mb-3">
                <strong>Clique em "Adicionar"</strong> para incluir a imagem no carousel.
              </div>

              <div class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-lg-5 row-cols-xl-6 g-2">
                <?php foreach($todasImagens as $img): ?>
                  <?php
                    $caminhoCompleto = "backoffice/uploads/" . $img;
                    $jaNoCarousel = in_array($caminhoCompleto, $imagensNoCarousel);
                  ?>
                  <div class="col">
                    <div class="card shadow-sm h-100 <?= $jaNoCarousel ? 'border-success border-2' : '' ?>">
                      <img src="/comunicacoes/backoffice/uploads/<?= htmlspecialchars($img) ?>" class="card-img-top" style="height:110px;object-fit:cover;">
                      <div class="card-body p-2 text-center">
                        <?php if($jaNoCarousel): ?>
                          <span class="badge bg-success w-100" style="font-size:0.7rem;">
                            ✓ Adicionado
                          </span>
                        <?php else: ?>
                          <form method="POST">
                            <input type="hidden" name="add_from_gallery" value="<?= htmlspecialchars($img) ?>">
                            <button class="btn btn-dark btn-sm w-100" style="font-size:0.75rem;">
                              Adicionar
                            </button>
                          </form>
                        <?php endif; ?>
                      </div>
                    </div>
                  </div>
                <?php endforeach; ?>
              </div>
            <?php endif; ?>

          </div>
        </div>

      </div>
    </div>
  </div>
</div>


<?php require_once "components/footer.php"; ?>