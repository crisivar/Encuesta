<!DOCTYPE html>
<html lang="es">
   <head>
      <meta charset="UTF-8">
      <title>Registro de usuario</title>
      <link rel="stylesheet" href="CSS/estilo.css" />
      <script type="text/javascript" src="js/validar_registro.js"></script>
      <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
   </head>
   <body>
      <div class="contenedor">
         <br><br><br>
         <div id="formulario">
            <form method="POST" action="return false" onsubmit="return false">
               <div id="resultado"></div>
               <p>
                  <label>Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <input type="text" name="nombre" id="nombre" value="">
               </p>
               <p>
                  <label>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <input type="email" name="email" id="email" value="">
               </p>
               <p>
                  <label>Usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <input type="text" name="user" id="user" value="">
               </p>
               <p>
                  <label>Clave:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <input type="password" name="pass" id="pass" value="">
               </p>
               <p>
                  <label>Repetir Clave:</label>
                  <input type="password" name="repass"  id="repass" value="">
               </p>
               <p>
                  <button onclick="ValidarRegistro(document.getElementById('nombre').value, document.getElementById('user').value, 
                                    document.getElementById('pass').value, document.getElementById('repass').value,
                                     document.getElementById('email').value);">
                  Registrar
                  </button>
               </p>
            </form>
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