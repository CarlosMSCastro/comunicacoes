<!DOCTYPE html>
<html lang="pt">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BackOffice Comunicações</title>
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600;700&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  
<header class="caixa">
  <h1>BackOffice Comunicações</h1>
  <?php if(isset($_SESSION["colaborador"])): ?>
    <nav>
      <a href="home.php" class="<?php echo ($pagina == 'home') ? 'active' : ''; ?>">Home</a>
      <a href="editar_home.php" class="<?php echo ($pagina == 'editar_home') ? 'active' : ''; ?>">Editar Página Home</a>
      <a href="editar_empresa.php" class="<?php echo ($pagina == 'editar_empresa') ? 'active' : ''; ?>">Empresa</a>
      <a href="editar_solucoes.php" class="<?php echo ($pagina == 'editar_solucoes') ? 'active' : ''; ?>">Soluções</a>
      <a href="editar_inovacoes.php" class="<?php echo ($pagina == 'editar_inovacoes') ? 'active' : ''; ?>">Inovações e Tecnologia</a>
      <a href="editar_contactos.php" class="<?php echo ($pagina == 'editar_contactos') ? 'active' : ''; ?>">Destaques</a>
      <a href="editar_contactos.php" class="<?php echo ($pagina == 'editar_contactos') ? 'active' : ''; ?>">Noticias</a>
      <a href="editar_parceiros.php" class="<?php echo ($pagina == 'editar_parceiros') ? 'active' : ''; ?>">Parceiros</a>
      <a href="editar_contactos.php" class="<?php echo ($pagina == 'editar_contactos') ? 'active' : ''; ?>">Contactos</a>

      <a href="logout.php">Sair</a>
    </nav>
  <?php endif; ?>
</header>
