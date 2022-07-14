<%@page import="java.util.LinkedList"%>
<%@page import="entities.Persona"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://getbootstrap.com/favicon.ico">
	<title>MENU</title>
	
    <link href="style/bootstrap.css" rel="stylesheet">

    <% 
    Persona p = (Persona)session.getAttribute("usuario");
    %>
    
</head>
<body>
	
		<h1>Bienvenido <%=p.getNombre() %></h1>
		<br>
		<h3> Menu de Opciones </h3>
		<br>
		<a href="usuarios.jsp">Administracion de Usuarios</a><br>
		<a href="altaUsuario.jsp">Creacion de Usuario</a><br>
		
		<a href="index.html" class="btn btn-danger">Cerrar Sesion</a>
		

</body>
</html>