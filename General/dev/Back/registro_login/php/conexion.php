<?php

//conn variables
$servername = "localhost";
$database = "fdt";
$username = "root";
$password = "";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database) or die("Connection failed: " . mysqli_connect_error());
?>