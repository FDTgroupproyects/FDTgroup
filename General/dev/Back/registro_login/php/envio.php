<?php
	include('conexion.php');

	// Variables datos
	
	$nombre = $_REQUEST['nombres'];
	$apellido = $_REQUEST['apellidos'];
	$pais = $_REQUEST['pais'];
	$telefono = $_REQUEST['telefono'];
	$genero = $_REQUEST['genero'];

	//inserción datos

	$sql = "INSERT INTO usuario_general(nombres_usuario,apellidos_usuario,alias_usuario,pais_usuario,telefono_usuario,genero_usuario,fc_registro_usuario,descripcion_usuario) 
	VALUES ('$nombre','$apellido','mike','$pais','$telefono','$genero','12-12-12','conservador')";

	if (mysqli_query($conn, $sql)) {
      echo "Datos agregados de forma correcta :D";
	} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	
	// mysqli_close($conexion);
	/*
	'nombres_usuario','apellidos_usuario','pais_usuario','telefono_usuario','genero_usuario'
	nombres_usuario,
	apellidos_usuario,
	alias_usuario,
	pais_usuario,
	telefono_usuario,
	genero_usuario,
	fc_registro_usuario,
	descripcion_usuario
	 */
?>

