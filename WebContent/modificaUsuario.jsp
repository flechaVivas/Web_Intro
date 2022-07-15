<%@page import="logic.Login"%>
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
	<title>Editar Usuario</title>
	
	<!-- Bootstrap core CSS -->
    <link href="style/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="style/signin.css" rel="stylesheet">
    
    <%
    	Persona p = (Persona)request.getAttribute("per");
    	Login ctrlLogin = new Login();
    	LinkedList<Persona> lp = ctrlLogin.getAll();
    		
    %>
</head>
<body>


		<div class="container">
			<div class="row">
				<h2>Modificar Usuario</h2>
            	<div class="col-12 col-sm-12 col-lg-12">
                	<div class="table-responsive">
                    	<table class="table">
                    		<thead>
                    			<tr>
                    				<th>ID</th>
                    		    	<th>Nombre</th>
                        			<th>Apellido</th>
                        			<th>TipoDoc</th>
                        			<th>NroDoc</th>
                        			<th>Email</th>
                        			<th>Telefono</th>
                        			<th>Password</th>
                        			<th>Habilitado</th>
                      			</tr>
                      		</thead>
                    		<tbody>
                    		<form action="actualizar" method="post">
                    		<% for (Persona per : lp) { %>
                    			<tr>
                    				<%if(per.getId()==p.getId()) { %>
	                    				
	                    				<td> <input type="text" value="<%=p.getId()%>" name="txtid" readonly="" class="form-control"> </td>
	                    				<td><input value="<%=p.getNombre()%>"name="nombre" type="text" class="form-control" required></td>
	                    				<td><input value="<%=p.getApellido()%>" name="apellido" type="text" class="form-control" required></td>
	                    				<td>
	                    					<input name="tipo_doc" onclick="null" list="browsers" class="form-control" value="<%=p.getDocumento().getTipo()%>" required>
	                    					<datalist id="browsers">
											    <option value="DNI">
											    <option value="CUIL">
											    <option value="CUIT">
											    <option value="Passport">
										 	</datalist>
	                    				</td>
	                    				<td><input value="<%=p.getDocumento().getNro()%>" name="nro_doc" type="text" class="form-control" required></td>
	                    				<td><input value="<%=p.getEmail()%>" name="email" type="email" class="form-control" required></td>
	                    				<td><input value="<%=p.getTel()%>" name="tel" type="text" class="form-control"></td>
	                    				<td><input value="<%=p.getPassword()%>" name="password" type="text" class="form-control" required></td>
	                    				<td class="atb">
	                    				    <div class="custom-control custom-checkbox">
	                                        	<input type="checkbox" class="custom-control-input" id="defaultDisabled" <%=per.isHabilitado()?"checked":""%> disabled>
	                                        <input value="<%=p.isHabilitado()?"checked":""%> %>" name="habilitado" type="checkbox">
	                                		</div>
	                    				</td>
                    				<%
                    				break;}%>
                    			</tr>
                    		<% } %>
								<td><button class="btn btn-lg btn-primary btn-block col-12" type="submit">Actualizar</button></td>
                    		</form>
                    		</tbody>	
                    </table>	
             <a href="usuarios.jsp" class="btn">Volver usuarios</a>
        
	</div> <!-- /container -->








<!-- 		<table class="table"> -->
		
<!-- 			<tr> -->
<!-- 				<td> ID </td> -->
<%-- 				<td> <input type="text" value="<%=p.getId()%>" name="txtid" readonly="" class="form-control"> </td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td> Nombre </td> -->
<%-- 				<td><input value="<%=p.getNombre()%>"name="nombre" type="text" class="form-control" required></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td> Apellido </td> -->
<%-- 				<td><input value="<%=p.getApellido()%>" name="apellido" type="text" class="form-control" required></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td> Tipo Doc </td> -->
<%-- 				<td><input value="<%=p.getDocumento().getTipo()%>" name="tipo_doc" type="text" class="form-control" required></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td> Nro Doc </td> -->
<%-- 				<td><input value="<%=p.getDocumento().getNro()%>" name="nro_doc" type="text" class="form-control" required></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td> Email </td> -->
<%-- 				<td><input value="<%=p.getEmail()%>" name="email" type="email" class="form-control" required></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td> Password </td> -->
<%-- 				<td><input value="<%=p.getPassword()%>" name="password" type="text" class="form-control" required></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td> Telefono </td> -->
<%-- 				<td><input value="<%=p.getTel()%>" name="tel" type="text" class="form-control"></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td> Habilitado </td> -->
<%-- 				<td><input value="<%=p.isHabilitado()?"checked":""%> %>" name="habilitado" type="checkbox"></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td><button class="btn btn-lg btn-primary btn-block" type="submit">Actualizar</button></td> -->
<!-- 			</tr> -->
			
		
<!-- 		</table> -->

	</form>





</body>
</html>