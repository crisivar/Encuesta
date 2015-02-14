<?php
error_reporting(0);
session_start();
include_once "conexion.php";
if ($con->connect_errno)
{
    echo "Fallo al conectar a MySQL: (" . $con->connect_errno . ") " . $con->connect_error;
    exit();
}

@mysqli_query($con, "SET NAMES 'utf8'");

if ($_POST['nombre'] == null || $_POST['user'] == null || $_POST['pass'] == null || $_POST['repass'] == null || $_POST['email'] == null)
{
    echo '<span>Por favor complete todos los campos.</span>';
}
else
{
        $nombre = mysqli_real_escape_string($con, $_POST['nombre']);
        $user = mysqli_real_escape_string($con, $_POST['user']);
        $pass = mysqli_real_escape_string($con, $_POST['pass']);
        $repass = mysqli_real_escape_string($con, $_POST['repass']);
        $email = mysqli_real_escape_string($con, $_POST['email']);

        $sql = 'SELECT * FROM usuarios';
        $rec = mysql_query($sql);
        $verificar_usuario = 0; //Creamos la variable $verificar_usuario que empieza con el valor 0 y si la condición que verifica el usuario(abajo), entonces la variable toma el valor de 1 que quiere decir que ya existe ese nombre de usuario por lo tanto no se puede registrar
        while ($result = mysql_fetch_object($rec)) {
            if ($result->usuario == $user) //Esta condición verifica si ya existe el usuario
                {
                $verificar_usuario = 1;
            }
        }
        if ($verificar_usuario == 0) {
            if ($_POST['pass'] == $_POST['repass']) //Si los campos son iguales, continua el registro y caso contrario saldrá un mensaje de error.
                {
                    $sqlinsert  = "INSERT INTO usuario (nombre, user, password, email) VALUES ('$nombre','$user','$pass', '$email')"; //Se insertan los datos a la base de datos y el usuario ya fue registrado con exito.
   
                     mysqli_query($con, $sqlinsert);
                
                echo 'Usted se ha registrado correctamente.';
                $_SESSION["usuario"] = $user;
                 echo '<script>location.href = "encuesta.php"</script>';
            } else {
                echo 'Las claves no son iguales, intente nuevamente.';
            }
        } else {
            echo 'Este usuario ya ha sido registrado anteriormente.';
        }
}
?>