<?php

require_once "conectar_db.php";

$conn = conectarDB();

// Recibir los datos del formulario
$nombre = $_POST['nombre'];
$alias = $_POST['alias'];
$rut = $_POST['rut'];
$email = $_POST['email'];
$region = $_POST['region'];
$comuna = $_POST['comuna'];
$candidato = $_POST['candidato'];
$enteradoWeb = isset($_POST["enterado_web"]) ? 1 : 0;
$enteradoTV = isset($_POST["enterado_tv"]) ? 1 : 0;
$enteradoRedes = isset($_POST["enterado_redes"]) ? 1 : 0;
$enteradoAmigo = isset($_POST["enterado_amigo"]) ? 1 : 0;



// Validar duplicación de votos por RUT
$sql = "SELECT COUNT(*) as count FROM votos WHERE rut = '$rut'";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
if ($row['count'] > 0) {
  echo "Error: Ya se ha registrado un voto con el mismo RUT.";
  exit();
}

// Insertar los datos en la base de datos
$sql = "INSERT INTO votos (nombre, alias, rut, email, region_id, comuna_id, candidato_id, enterado_web, enterado_tv, enterado_redes, enterado_amigo) 
    VALUES ('$nombre', '$alias', '$rut', '$email', '$region', '$comuna', '$candidato', '$enteradoWeb', '$enteradoTV', '$enteradoRedes', '$enteradoAmigo')";

if ($conn->query($sql) === TRUE) {
  echo "¡Tu voto ha sido registrado correctamente!";
} else {
  echo "Error al registrar el voto: " . $conn->error;
}
$conn->close();
?>