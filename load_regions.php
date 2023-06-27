<?php

require_once "conectar_db.php";

$conn = conectarDB();

// Consultar los candidatos en la base de datos
$sql = "SELECT * FROM regiones";
$result = $conn->query($sql);

// Generar las opciones de candidato
$options = '<option select value=""> Seleccione </option>';
if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    $options .= "<option value='" . $row['id'] . "'> REGION " . $row['romano'] . " " . $row['descripcion'] . "</option>";
  }
}

// Devolver las opciones de candidato como respuesta
echo $options;

$conn->close();
?>