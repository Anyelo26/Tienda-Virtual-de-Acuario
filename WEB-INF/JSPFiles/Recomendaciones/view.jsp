<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ page import="controller.*" %>
<%@page import="java.text.*" %>

<%@page import="controller.recomendaciones.*" %>
<% String menu= (String)request.getAttribute("menu"); %>
<%
	Recomendacion recomendacion=(Recomendacion)request.getAttribute("read");
	%>
<!DOCTYPE html >

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name ="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Leer Recomendacion</title>
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
	
	
	<table  class="tabla_añadir">
		
		<tr>
        	<td id="titulo">Datos de la Recomendacion</td>
        </tr>
		<tr >
			<td><label for="titulo">Titulo</label></td>
        </tr>
        <tr>
			<th><input type="text" name="titulo" id="titulo" readonly="readonly" value=<%=recomendacion.getTitulo() %>></th>
		</tr>
		<tr >
			<td><label for="producto">Informacion</label></td>
        </tr>
        <tr>
			<th><textarea name="informacion" class="imagen" readonly="readonly" value=<%=recomendacion.getInformacion()%>></textarea></th>
		</tr>
        <tr>
			<th><img src=<%=recomendacion.getImagen() %>> </th>
		</tr>
		<tr>
			<th>
			<a href="/Recomendaciones/Add"><input type="submit" value="Crear Nueva Recomendacion" class="boton_crear"></a>
			<a href="/Recomendaciones"><input type="submit" value="Ir a la Lista" class="boton_index"></a>
			</th>
			
		</tr>
	</table>
			
</body>
</html>