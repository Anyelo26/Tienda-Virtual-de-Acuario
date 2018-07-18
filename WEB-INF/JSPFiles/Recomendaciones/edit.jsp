<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@page import="model.*" %>
    <%@page import="java.text.*" %>
    <%@page import="java.util.*" %>
    <%@page import="controller.recomendaciones.*" %>
    <% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name ="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Editar Recomendacion</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link href="../css/animate.min.css" rel="stylesheet"> 
	<link href="../css/style.css" rel="stylesheet" />
</head>
<body>
<header id="header" >
        <nav class="navbar navbar-default navbar-static-top "  role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>				
                <div class="navbar-collapse collapse">							
					<div class="menu" >
						<ul class="nav nav-tabs " role="tablist">
							<li role="presentation"><a href="../index.jsp" class="active">Casa</a></li>
							<%=menu%>
							<li role="presentation"><a href="/UserLogin">Login</a></li>
							<li role="presentation"><a href="/UserLogout">Logout</a></li>
							<li role="presentation"><a href="/User/Register">Registrarse</a></li>
							<li role="presentation"><a href="/Product/Display">Productos</a></li>
							<li role="presentation"><a href="/peces">Peces</a></li>
							<li role="presentation"><a href="/lab08_foro">Foro</a></li>
							<li role="presentation"><a href="/Recomendaciones">Recomendaciones</a></li>	
							<li role="presentation"><a href="/Clientes">Clientes</a></li>	
							<li role="presentation" style="margin-left:45%"><div class="navbar-brand">
								<a href="../index.jsp"><h1>OMEGA-AQP</h1></a>
							</div></li>
													
						</ul>
					</div>
				</div>		
            </div>
        </nav>		
    </header>




		<%
		Recomendacion editarRecomendacion=(Recomendacion)request.getAttribute("editRecomendacion");
		%>		
		<form action="/Recomendaciones/Edit?action=guardar&cambiarID=<%=editarRecomendacion.getID() %>" method="Post">
	
		<table class="tabla_añadir">
		<tr>
			<td id="titulo">Editar Recomendacion</td>
		</tr>
		<tr >
			<td><label for="titulo">Titulo</label></td>
         </tr>
		<tr>
			<th><input type="text" name="titulo" value=<%=editarRecomendacion.getTitulo()%> id="titulo"></th>
		</tr>
		<tr >
			<td><label for="informacion">Informacion</label></td>
         </tr>
		<tr>
			<th><textarea name="informacion" class="imagen" value=<%=editarRecomendacion.getInformacion()%>></textarea></th>
		</tr>
		<tr >
			<td><label for="imagen">Imagen</label></td>
         </tr>
		<!--  <tr>
			<th><input type="file" name="informacion" value=<%=editarRecomendacion.getImagen()%> id="imagen"></th>
		</tr>-->
		
		<tr>
			<th>
			<input type="submit" value="Guardar Cambios" class="boton_crear">
			</th>
		</tr>
	</table>
	</form>
</body>
</html>