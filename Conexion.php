<?php

$server = "localhost";
$user = "root";
$pass = "";
$db = "lab2";

$conexion = new mysqli($server,$user,$pass,$db);

if($conexion->connect_errno){
	die("La conexion ha fallado" . $conexion->connect_errno);
}else{
    echo "Conectado";
}

?>