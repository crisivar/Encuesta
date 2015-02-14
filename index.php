<?php
session_start();
if (isset($_SESSION['usuario']))
{
	echo '<script>location.href = "encuesta.php";</script>';
}
else
{
?>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>RISS</title>
<link rel="stylesheet" href="CSS/estilo.css" />
<script type="text/javascript" src="js/validar.js"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</head>
<body>
<div class="header">
	<div class="wrap">
		<div class="logo">
			<img src="Images/index_r1_c1.jpg" alt="">
		</div>
	</div>
</div>
	<div class="content">
	
	<div id="formulario">
		<form method="POST" action="return false" onsubmit="return false">
			<div id="resultado"></div>
			<p>
				<input type="text" name="user" id="user" value="" placeholder="USUARIO">
			</p>
			<p>
				<input type="password" name="pass" id="pass" value="" placeholder="*******">
			</p>
			<p>
				<button onclick="Validar(document.getElementById('user').value, document.getElementById('pass').value);">
					ENTRAR
				</button>
			</p>
			<p>
				<a href="registro.php">Registrarse</a>
			</p>
		</form>
	</div>
	</div>
<!-- Footer -->
<div class="footer">
			<div class="wrap">
				<p>Universidad del Valle</p>
				<p>Vicerrectoria de Investigaciones</p>
				<p>Facultad de Salud - Escuela de Salud Pública</p>
				<p>riss.esp@correounivalle.edu.co</p>
			</div>
</div>
</body>
</html>
<?php
}
?>
