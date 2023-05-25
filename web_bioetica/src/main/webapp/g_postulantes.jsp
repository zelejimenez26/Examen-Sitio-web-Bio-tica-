<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bioetica.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/estilo2.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Gestión de postulantes</title>
</head>
<body>
<div class="contenedor">
        <div class="navbar">
        	<div class="logotipo">
                <a href="index.jsp"><img src="imagenes/bioetica.png" class="logo" alt="Main logo"></a>
            </div>
            <div>
                 <h4>Telf: 0980485032</h4>
            </div>
        </div>
	</div>
<h1 class="text-p">Espacio privado para miembros / Administradores</h1>
<div style="padding-bottom: 320px;  padding-top: 45px; padding-left: 45px;">
	<%
	Postulante pst = new Postulante();
	out.print(pst.consultarTodo());
	%>
</div>
<footer>
        <div class="anexos">
            <div>
                <img src="imagenes/bioetica.png" class="logo">
                <p>Grupo académico multidisciplinario de la Universidad<br>
                Politécnica Salesiana, Sede Quito 2023</p>
                <a href="https://www.ups.edu.ec/">Más información aquí</a>
            </div>
            <div>
                <h2>Síguenos</h2>
                <a href="#">Facebook</a>
                <a href="#">Instagram</a>
                <a href="#">Twitter</a>
            </div>
            <div>
                <h2>Desarrolladores</h2>
                <a href="https://github.com/zelejimenez26">Más información aquí</a>
            </div>
        </div>
    </footer>

</body>
</html>