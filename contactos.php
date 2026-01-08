<?php
require_once "bd_helper.php";
$tipoPagina = 'contactos';
require_once "components/header.php";

$id_navbar = $_GET['id'] ?? 0;


$parceiros = select_sql("SELECT nome, imagem_grande, imagem_pequena FROM parceiros");

?>



<?php
$showCarousel2 = false;
$showFooterCarousel= false;
require_once "components/footer.php";
?>