<?php

session_start();
function fazer_login($username, $password){
  $colaborador = select_sql_unico("SELECT * FROM colaboradores WHERE username=?", [$username]);
  if(!empty($colaborador) && password_verify($password, $colaborador["password"])){
    $_SESSION["colaborador"] = $colaborador;
    date_default_timezone_set("Europe/Lisbon");
    $data = date("H:i:s - d/m/Y");
    idu_sql("UPDATE colaboradores SET data_ultimo_acesso=? WHERE id=?", [$data, $colaborador["id"]]);
    header("Location: home.php");
  }
}

function verificar_login(){
  global $colaborador;
  if(!empty($_SESSION["colaborador"])){
    $colaborador = $_SESSION["colaborador"];
  }
  else{
    header("Location: login.php");
  }
}

function logout(){
  session_destroy();
  header("Location: login.php");
}


?>
