<?php
require_once "bd_helper.php";
require_once "components/header.php";
$id = $_GET['id'] ?? 0;
$destaques = select_sql("SELECT * FROM carousel2 ORDER BY id ASC");