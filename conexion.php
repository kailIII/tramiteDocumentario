<?php
$mysqli = mysqli_connect("localhost","root","","tramite");
if(mysqli_connect_errno($mysqli)){
	echo "Fallo al conectar a MySQL: ".mysql_connect_error();
}
?>