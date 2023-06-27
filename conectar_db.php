<?php
function conectarDB() {
  $servername = "127.0.0.1";
  $username = "root";
  $password = "";
  $dbname = "challangedenis";

  // Crear la conexión
  $conn = new mysqli($servername, $username, $password, $dbname);

  // Verificar si hay errores de conexión
  if ($conn->connect_error) {
    die("Error al conectar con la base de datos: " . $conn->connect_error);
  }

  // Establecer el conjunto de caracteres a UTF-8
  $conn->set_charset("utf8");

  // Devolver la conexión
  return $conn;
}
?>