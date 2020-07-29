<?php
try {
    $mbd = new PDO('mysql:host=localhost;dbname=lab2', 'root','');

	print "<table border = 2>";
	print "<tr><td>Carnet</td><td>Nombre</td></tr>";
    
	foreach($mbd->query('SELECT * from estudiante') as $fila) {
		print "<tr><td>" . $fila["Carnet"] . "</td>" ;   
		print "<td>" . $fila["Nombres"] ." ". $fila["Apellidos"]. "</td></tr>";
	}
  	print "</table>";	
    $mbd = null;
} catch (PDOException $e) {
    print "¡Error!: " . $e->getMessage() . "<br/>";
    die();
}
?>