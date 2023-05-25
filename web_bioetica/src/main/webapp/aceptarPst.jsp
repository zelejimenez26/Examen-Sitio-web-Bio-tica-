<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bioetica.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String ci = request.getParameter("cod");
	Postulante pst = new Postulante();
	boolean f = pst.aceptarPostulacion(ci);
	if(f == true){
		response.sendRedirect("g_postulantes.jsp");
	}
%>

</body>
</html>