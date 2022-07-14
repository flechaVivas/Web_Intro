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
	<title>Alta Usuario</title>
	
	<!-- Bootstrap core CSS -->
    <link href="style/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="style/signin.css" rel="stylesheet">
    
    <%
    	Persona p = (Persona)session.getAttribute("usuario");
    %>
    
</head>
<body>

	<form action="newuser" method="post">

		<h2>Alta de Usuarios</h2>

		<table class="table">
		
			<tr>
				<td> Nombre </td>
				<td><input name="nombre" type="text" class="form-control" required></td>
			</tr>
			<tr>
				<td> Apellido </td>
				<td><input name="apellido" type="text" class="form-control" required></td>
			</tr>
			<tr>
				<td> Tipo Doc </td>
				<td><input name="tipo_doc" type="text" class="form-control" required></td>
			</tr>
			<tr>
				<td> Nro Doc </td>
				<td><input name="nro_doc" type="text" class="form-control" required></td>
			</tr>
			<tr>
				<td> Email </td>
				<td><input name="email" type="email" class="form-control" required></td>
			</tr>
			<tr>
				<td> Password </td>
				<td><input name="password" type="password" class="form-control" required></td>
			</tr>
			<tr>
				<td> Telefono </td>
				<td><input name="tel" type="text" class="form-control"></td>
			</tr>
			<tr>
				<td> Habilitado </td>
				<td><input name="habilitado" type="checkbox"></td>
			</tr>
			<tr>
				<td><button class="btn btn-lg btn-primary btn-block" type="submit">Aceptar</button></td>
			</tr>
			
		
		</table>



	</form>

</body>
</html>