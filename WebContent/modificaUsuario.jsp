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
	<title>Editar Usuario</title>
	
	<!-- Bootstrap core CSS -->
    <link href="style/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="style/signin.css" rel="stylesheet">
    
    <%
    	Persona p = (Persona)request.getAttribute("per");
    %>
</head>
<body>

	<form action="actualizar" method="post">

		<h2>Modificar Usuario</h2>

		<table class="table">
		
			<tr>
				<td> ID </td>
				<td> <input type="text" value="<%=p.getId()%>" name="txtid" readonly="" class="form-control"> </td>
			</tr>
			<tr>
				<td> Nombre </td>
				<td><input value="<%=p.getNombre()%>"name="nombre" type="text" class="form-control" required></td>
			</tr>
			<tr>
				<td> Apellido </td>
				<td><input value="<%=p.getApellido()%>" name="apellido" type="text" class="form-control" required></td>
			</tr>
			<tr>
				<td> Tipo Doc </td>
				<td><input value="<%=p.getDocumento().getTipo()%>" name="tipo_doc" type="text" class="form-control" required></td>
			</tr>
			<tr>
				<td> Nro Doc </td>
				<td><input value="<%=p.getDocumento().getNro()%>" name="nro_doc" type="text" class="form-control" required></td>
			</tr>
			<tr>
				<td> Email </td>
				<td><input value="<%=p.getEmail()%>" name="email" type="email" class="form-control" required></td>
			</tr>
			<tr>
				<td> Password </td>
				<td><input value="<%=p.getPassword()%>" name="password" type="text" class="form-control" required></td>
			</tr>
			<tr>
				<td> Telefono </td>
				<td><input value="<%=p.getTel()%>" name="tel" type="text" class="form-control"></td>
			</tr>
			<tr>
				<td> Habilitado </td>
				<td><input value="<%=p.isHabilitado()?"checked":""%> %>" name="habilitado" type="checkbox"></td>
			</tr>
			<tr>
				<td><button class="btn btn-lg btn-primary btn-block" type="submit">Actualizar</button></td>
			</tr>
			
		
		</table>

	</form>





</body>
</html>