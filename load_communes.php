<?php

require_once "conectar_db.php";
$conn = conectarDB();

// Obtener el ID de la región seleccionada
$regionId = $_GET['regionId'];

// Consultar las comunas de la región en la base de datos
$sql = "SELECT comunas.id , comunas.descripcion FROM comunas
    INNER JOIN provincia ON comunas.id_provincia = provincia.id
    WHERE provincia.id_region = '$regionId'";
$result = $conn->query($sql);

// Generar las opciones de comuna
$options = '<option select value=""> Seleccione </option>';
if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    $options .= "<option value='" . $row['id'] . "'>" . $row['descripcion'] . "</option>";
  }
}

// Devolver las opciones de comuna como respuesta
echo $options;

$conn->close();
?>