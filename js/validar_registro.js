function ValidarRegistro(nombre, user, pass, repass, email)
		{
			$.ajax({
				url: "validar_registro.php",
				type: "POST",
				data: "nombre="+nombre+"&user="+user+"&pass="+pass+"&repass="+repass+"&email="+email,
				success: function(resp){
					$('#resultado').html(resp)
				}		
			});
		}