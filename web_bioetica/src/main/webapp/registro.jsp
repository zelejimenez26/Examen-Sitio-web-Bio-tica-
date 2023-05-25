<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/estilo4.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Registrate gratis</title>
</head>
<body>
<form action="usuarioRegistro.jsp" method="post" class="formulario">
	<h1>Registrate</h1>
	<div class="contenedor">
		<div class="input-contenedor">
			<input type="text" name="txtNombre" placeholder="Nombre completo">
		</div>
		<div class="input-contenedor">
			<input type="text" name="txtCorreo" placeholder="Correo electrónico">
		</div>
		<div class="input-contenedor">
			<input type="password" name="txtClave" placeholder="Contraseña">
		</div>
		<div class="input-contenedor">
			<input type="text" name="txtDireccion" placeholder="Dirección">
		</div>
		<input type="submit" value="Registrate" class="button">
		<p>Al registrarte, aceptas nuestras condiciones de uso y
		política de privacidad</p>
		<p>Ya tienes una cuenta  <a class="link" href="login.jsp">  Iniciar sesion</a></p>
	</div>

</form>

</body>
</html>