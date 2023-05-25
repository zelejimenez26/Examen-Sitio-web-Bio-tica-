<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bioetica.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center" style="padding: 40px;">
		<%
		Usuario usu = new Usuario();
		int id_per = 2;
		String nombre=request.getParameter("txtNombre");
		String correo=request.getParameter("txtCorreo");
		String clave=request.getParameter("txtClave");
		String direccion=request.getParameter("txtDireccion");
		out.print(usu.ingresarUsuario(id_per, nombre, direccion, correo, clave));
		%>
</div>

</body>
</html>