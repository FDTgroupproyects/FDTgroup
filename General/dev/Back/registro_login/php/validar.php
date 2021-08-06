<?php

include('conexion.php'); 

$nombre = $_REQUEST['nombre'];
$telefono = $_REQUEST['telefono'];

$sql = "SELECT * FROM usuario_general 
	WHERE nombres_usuario =  '$nombre' AND telefono_usuario = '$telefono'";

		// `hola ${var}`;

if(!empty($_POST['nombre']) && !empty($_POST['telefono'])){
	if(mysqli_query($conn,$sql)){
		echo "<script>alert('Se ha registrado exitosamente')</script>";
} else{
	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
}

/*if(mysqli_query($conn,$sql)){
	echo "<p>Datos existentes</p>";*/
/*} else if (!$sql){
	echo "<p>Datos no existentes</p>";*/
?>