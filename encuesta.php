<?php

session_start();
include_once "conexion.php";
if ($con->connect_errno)
  {
    echo "Fallo al conectar a MySQL: (" . $con->connect_errno . ") " . $con->connect_error;
    exit();
  }

@mysqli_query($con, "SET NAMES 'utf8'");

$preguntas = mysqli_query($con, "SELECT * FROM preguntas");
$municipios = mysqli_query($con, "SELECT * FROM municipios");
$row = mysqli_fetch_array($preguntas);

date_default_timezone_set("America/Bogota");
$tiempo_restante=20;
$to_time = strtotime("now");
//$from_time = strtotime($row['tiempo']);
//$expired=round(abs($to_time - $from_time) / 60);
//$tiempo_restante=20-$expired;

if (isset($_SESSION['usuario']))
{

?>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <title>
      Encuesta RISS
    </title>
    <link rel="stylesheet" href="CSS/estilo.css" />
    <script type="text/javascript" src="paginacion/jquery.js"></script>
    <script type="text/javascript" src="paginacion/jquery.paginate.js"></script>
    <script type="text/javascript">
      function saru()
      {
        document.forms["encuesta"].submit();
      }
      $(function() {
        $("#submit_but").hide();
        
        last=13;
       
        $("#paginacion").paginate(
          {
            count     : last,
            start     : 1,
            display     : 5,
            border          : true,
            border_color      : '#FF0000',
            text_color        : '#fff',
            background_color      : '#FF0000',  
            border_hover_color    : '#ccc',
            text_hover_color      : '#fff',
            background_hover_color  : '#000', 
            images          : false,
            mouse         : 'press',
            onChange : function(page)
              {
              $('._current','#paginationdemo').removeClass('_current').hide();
              $('#p'+page).addClass('_current').fadeIn();
              $("#submit_but").fadeOut();
              if(page==last)
                {
                  $("#submit_but").fadeIn();
                }
              }
          }
                            );
        
      }
       );
    </script>
  </head>
  <body>
    <div class="header">
      <div class="wrap">
        <div class="logo">
          <div id='navbar'>
            <ul>
             <p>Bienvenido <b><?php echo $_SESSION['usuario']; ?></b>
              <br>
              <a href="logout.php">Cerrar sesión</a></p>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="wrap">
      <div class="contentGeneral">
        <div class="post">
          <div class="logo">
            <img src="Images/index_r1_c1.jpg" alt="">
          </div>
          <h3>
            Presencia de atributos esenciales para la conformación de redes integradas de servicios de salud, en el sistema de salud colombiano, análisis para el caso Valle del Cauca
          </h3>
          <br>
          <div id="paginationdemo" class="demo">
            <form action="proceso_encuesta.php" name="formulario" method="post">
            <?php
              $primero=0;

              while ($value = mysqli_fetch_array($preguntas)) 
              {
                $questions[]=$value;
              }

              foreach ( $questions as $row)
              {

                if($primero==1)
                  { //tabla de las preguntas
                    echo '<span id="p'.$primero.'" class="pagedemo _current" style="display:none;">
                            <table border="0" id="table">
                             <tr>
                              <td width="700px" colspan="2">
                                 '.$row['pregunta'].'
                              </td>
                              </tr>
                              <tr>
                                <td width="10px" >
                                  <select name="respuesta'.$row['no'].'" >';
                                  while ($value = mysqli_fetch_array($municipios)) 
    							{
    								echo '<option VALUE="'.$value['ID'].'"> '.$value['nombre'].'</option>';
    							}
                                  
                                  echo '</select>
                                </td>
                              </tr>
                            </table>
                          </span>';
                  }
                else
                  {
                    echo '<span id="p'.$primero.'" class="pagedemo" style="display:none;">
                            <table border="0" id="table">
                             <tr>
                              <td width="700px" colspan="2">
                                 '.$row['pregunta'].'
                              </td>
                              </tr>
                              <tr>
                                <td width="10px" >
                                  <input type="radio" name="respuesta'.$row['no'].'" value="0" style="width:10px">
                                </td>
                                <td >
                                  '.$row['opcion1'].'
                                </td>
                              </tr>
                              <tr>
                                <td>
                                <td>
                                <input type="radio" name="respuesta'.$row['no'].'" value="1" style="width:10px">
                                </td>
                                <td>
                                 '.$row['opcion2'].'
                                </td>
                              </tr>
                              <tr>
                                <td>
                                 <input type="radio" name="respuesta'.$row[('no')].'" value="2" style="width:10px">
                                </td>
                                <td>
                                 '.$row['opcion3'].'
                                </td>
                              </tr>
                    </table>
                    </span>';
                  }

                  $primero++;
              }

              ?>
                       
              <div id="paginacion">
               
              </div>
               <br>
               <br>
               <br>
              <input type="submit" id="submit_but" value="Enviar" />
            </form>
          </div>
        </div>
      </div>
    </div>
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
else
{
echo '<script>
        alert("primero debes loguearte para ver esta pagina")
      </script>';
echo '<script>
        location.href = "index.php";
      </script>';
}
?>

