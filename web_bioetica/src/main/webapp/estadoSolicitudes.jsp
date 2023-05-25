<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bioetica.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Estado solicitudes</title>
</head>
<body>
<div style="padding-bottom: 320px;  padding-top: 45px; padding-left: 45px;">
	<%
	String ci = request.getParameter("cod");
	Postulante pst = new Postulante();
	boolean f = pst.aceptarPostulacion(ci);
	if(f == true){
		response.sendRedirect("g_postulantes.jsp");
	}
	out.print(pst.consulta_unica(ci, f));
%>
</div>

</body>
</html>