<?php
	$nombre = $_REQUEST['nombre'];
	include('conexion.php');
	//insert data

	$sql = "INSERT INTO pruebas VALUES ('$nombre')";

	if (mysqli_query($conn, $sql)) {
      echo "Al fin se agregó, ehg";
	} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	
	// mysqli_close($conexion);
?>