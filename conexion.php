<?php
$mysqli = mysqli_connect("localhost","root","","tramite");
if(mysqli_connect_errno($mysqli)){
	echo "Fallo al conectar a MySQL: ".mysql_connect_error();
}

$consulta = "SELECT n_usu FROM usuario";
if($resultado = $mysqli->query($consulta)){
	while($fila = $resultado->fetch_assoc()){
		printf("%s \n", $fila["n_usu"]);
	}

	$resultado->free();
}

$mysqli->close();
?>