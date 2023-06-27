<?php

require_once "conectar_db.php";
$conn = conectarDB();

// Consultar los candidatos en la base de datos
$sql = "SELECT * FROM candidatos";
$result = $conn->query($sql);

// Generar las opciones de candidato
$options = "";
if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    $options .= "<option value='" . $row['id'] . "'>" . $row['nombre'] ." ". $row['partido'] . "</option>";
  }
}

// Devolver las opciones de candidato como respuesta
echo $options;

$conn->close();
?>