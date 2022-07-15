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
    Persona p = new Persona();
    if(session.getAttribute("usuario") == null){
    	request.getRequestDispatcher("index.html").forward(request, response);
    } else{
	    p = (Persona)session.getAttribute("usuario");
    }
    %>
    
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<h1>Bienvenido </h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<a href="usuarios.jsp">Administracion de Usuarios</a><br>
			</div>
			<div class="col-md-3">
				<a href="altaUsuario.jsp">Creacion de Usuario</a><br>
			</div>
		</div>
			<br><br>
			<a href="cerrarsesion" class="btn btn-danger">Cerrar Sesion</a>
	 
		</div>
	
	 	
		
		

</body>
</html>