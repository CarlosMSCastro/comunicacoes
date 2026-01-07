<?php

require_once "bd_helper.php";
$tipoPagina = 'destaques';
require_once "components/header.php";

$id = (int)($_GET['id'] ?? 0);

$destaque = select_sql("SELECT titulo, imagem, texto FROM carousel2 WHERE id = $id")[0] ?? null;
?>

<div class="container-fluid p-5 container_destaque">
  <div class="row m-0">
      <div class="col-12 p-0">

      <?php if ($destaque): ?>
        <h1 id="titulo-empresa" style=" line-height: 1.2;  ">
          <?= ucfirst($tipoPagina) ?> – <?= $destaque['titulo'] ?>
        </h1>
      <?php endif; ?>
        <div class="row">
          <div class="col-12 col-md-6">
            <img src="<?= $destaque['imagem'] ?>" alt="<?= htmlspecialchars($destaque['titulo']) ?>" class="img-fluid mt-4">
          </div>
        </div>
        <div class="row mt-3">
          <div class="col-12">
            <p style="text-align: justify; font-size: 18px; color: #4D4D4D;">
              <?= $destaque['texto'] ?>
            </p>
          </div>
        </div>
        <div class="row mt-4 mx-0">
          <div class="col-12 text-center text-md-end px-0">
            <a href="destaques.php" class="destaques-btn d-inline-block">Voltar para destaques</a>
          </div>
        </div>
        
      </div>
  </div>
</div>


<?php
$showCarousel2 = false;
require_once "components/footer.php";
?>