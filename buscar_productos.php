<?php
	//Incluyo el archivo de configuracion
	require_once('configure.php');
	$servername = HOST;
	$username = USER;
	$password = PASSWORD;
	$dbname = DATABASE;

	try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        
			$sql = "SELECT ID_Producto,Producto FROM galleguitas_productos GP WHERE GP.categoria ='".$_REQUEST['eleccion']."'";
			foreach ($conn->query($sql) as $row) {
				echo "<option value='".$row['ID_Producto']."'>".$row['Producto']."</option>";
			}
	}
		catch(PDOException $e)
	{
			echo "Error: " . $e->getMessage();
	}
		$conn = null;
?>
