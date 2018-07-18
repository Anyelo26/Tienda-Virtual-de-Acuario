<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@page import="controller.recomendaciones.*" %>
    <%@page import="model.*" %>
    <%@page import="java.util.*" %>
<% String menu = (String)request.getAttribute("menu"); %>

    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Crear Nueva Recomendacion</title>
<link rel="stylesheet" href="CSS/estilos.css">
<link rel="stylesheet" href="CSS/add/add.css">
</head>
<body>

<div class="cabecera">
    		<h1 class="title"> System</h1>
    	<%=menu%>
    			<div class="menuAdmin"><a href="/UserLogin">Login</a></div>
    			<div class="menuAdmin"><a href="/UserLogout">Logout</a></div>
    			<div class="menuAdmin"><a href="/User/Register">Register</a></div>
    			<div class="menuAdmin"><a href="/Product/Display">Product</a></div>
    			<div class="menuAdmin"><a href="/lab08_foro">Foro</a></div>
    			<div class="menuAdmin"><a href="/Recomendaciones">Recomendaciones</a></div>
    			<li role="presentation"><a href="/Clientes">Clientes</a></li>
    			<div class="menuAdmin"><a href="/peces/view">Peces</a></div>
    </div>


		
		<form action="/Recomendaciones/Add" method="Get">
		
	<table  class="tabla_añadir">
		<tr>
        	<td id="titulo">Crear Nueva Recomendacion</td>
        </tr>
		<tr >
			<td><label for="titulo">Titutlo</label></td>
         </tr>
         <tr>
			<th><input type="text" name="titulo" required placeholder="Ingrese el Titulo" id="titulo"></th>
		</tr>
		<tr >
			<td><label for="informacion">Informacion</label></td>
         </tr>
         <tr>
			<th><textarea name="informacion" placeholder="Ingrese la inforamcion de la Recomendacion" class="recomendacion"></textarea></th>
		</tr>
		<tr >
			<td><label for="imagen">Imagen</label></td>
         </tr>
         <tr>
			<th><input type="file" name="imagen" id="imagen"></th>
		</tr>
		<tr>
			<th>
			<input type="submit" value="Crear Recomendacion" class="boton_crear">
			</th>
           
		</tr>
	</table>
  
	</form>
</body>
</html>