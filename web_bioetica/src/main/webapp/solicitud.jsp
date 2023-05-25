<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/estilo4.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Postulaci�n</title>
</head>
<body>
<form action="postulanteRegistro.jsp" method="post" class="formulario">
	<h1>Postulaci�n</h1>
	<hr>
	<h2>Se parte del club de Bio�tica</h2>
	<div class="contenedor">
		<div class="input-contenedor">
			<input type="text" name="txtCI" placeholder="N�mero de identificacion (C.I)">
		</div>
		<div class="input-contenedor">
			<input type="text" name="txtNombre" placeholder="Nombre completo">
		</div>
		<div class="input-contenedor">
			<input type="text" name="txtCorreo" placeholder="Correo electr�nico">
		</div>
		<div class="input-contenedor">
			<input type="text" name="txtCelular" placeholder="N�mero celular">
		</div>
		<div class="file-contenedor">
			<h3>Hoja de vida</h3><input type="file" name="archivo_subido" accept=".pdf"/>
		</div>
		<input type="submit" value="Postular" class="button">
		<p>La respuesta de tu solicitud/postulaci�n sera visible dentro de 24 horas</p>
	</div>
</form>

</body>
</html>