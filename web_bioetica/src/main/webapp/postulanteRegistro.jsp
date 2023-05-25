<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bioetica.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center" style="padding: 40px;">
		<%
		Postulante pst = new Postulante();
		String ci=request.getParameter("txtCI");
		String nombre=request.getParameter("txtNombre");
		String correo=request.getParameter("txtCorreo");
		String celular=request.getParameter("txtCelular");
		String hoja_vida = request.getParameter("archivo_subido");
		boolean est = false;
		out.print(pst.ingresarPostulanteData(ci, nombre, correo, celular, hoja_vida, est));
		%>
</div>

</body>
</html>