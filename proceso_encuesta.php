<?php

session_start();
include_once "conexion.php";
if ($con->connect_errno)
{
echo "Fallo al conectar a MySQL: (" . $con->connect_errno . ") " . $con->connect_error;
exit();
}
@mysqli_query($con, "SET NAMES 'utf8'");

$numero_preguntas = 66;
$id=$_SESSION['usuario'];
$respuesta;

if(isset($_POST['formulario'])){
		for ($i=0;$i<$numero_preguntas;$i++)
				{
					if(isset($_POST['respuesta'.$i]))
					{
						$respuesta[$i]   =    $_POST['respuesta'.$i];
					}
				}
	}
		
			
	$str = implode(",",$respuesta);
 	$sql= "INSERT INTO encuesta VALUES(".$str.");"; 

	mysqli($con, $sql);
	
	echo '<script>
        location.href = "index.php";
    </script>';	
		



