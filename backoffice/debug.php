<?php
require_once "bootstrap.php";

$paginas = select_sql("SELECT * FROM paginas_solucoes");

echo "<pre>";
print_r($paginas);
echo "</pre>";
?>