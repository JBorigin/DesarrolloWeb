<?php

$mysqli = mysqli_connect('localhost', 'root', '', 'lab2');

if (mysqli_connect_errno($mysqli)) {
    trigger_error('Conexion fallida a base de datos: '  . mysqli_connect_error(), E_USER_ERROR);
}


$query = "SELECT * FROM `estudiante`";
$result = mysqli_query($mysqli, $query) or trigger_error("Consulta Fallida! SQL: $query - Error: ". mysqli_error($mysqli), E_USER_ERROR);

if($result) {

	print "<table border = 2>";
	print "<tr><td>Codigo</td><td>Nombre</td></tr>";

	while($row = mysqli_fetch_assoc($result)) {
				
		print "<tr><td>" . $row["Carnet"] . "</td>" ;   
		print "<td>" . $row["Nombres"] . " " . $row["Apellidos"] . "</td></tr>";
	
	
	}

	print "</table>";
}

mysqli_close($mysqli);
?>