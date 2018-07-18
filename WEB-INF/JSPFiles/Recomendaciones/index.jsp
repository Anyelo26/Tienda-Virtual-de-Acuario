<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*" %>
<%@ page import="model.*"%>
<%@ page import="controller.*" %>
<%@page import="controller.recomendaciones.*" %>


<%
	List<Recomendacion> recomendaciones = (List<Recomendacion>) request.getAttribute("recomendaciones");
	
%>
<% String menu= (String)request.getAttribute("menu"); %>
<html>
<head>

	

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name ="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lista de Recomendaciones</title>
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
	
<div class="container">
<h2>Lista de Recomendaciones</h2><br>

	<%
		if (recomendaciones.size() > 0) {
	%>
	<div id="main-container">
	<table>
	<thead>
		<tr>
			<th>Titulo</th>
			
		</tr>
	</thead>
		<%
			for (int i = 0; i < recomendaciones.size(); i++) {
		%>
		<%
			Recomendacion a = recomendaciones.get(i);
		%>
		<tr>
			<td><%=a.getTitulo()%></td>
			
			<td><a href="/Recomendaciones/Delete?accountID=<%=a.getID()%>"><input type="submit" value="Delete" class="boton_delete"> </a></td>
			<td><a href="/Recomendaciones/Edit?action=primero&cambiarID=<%=a.getID()%>"><input type="submit" value="Update" class="boton_update"> </a></td>
			<td><a href="/Recomendaciones/View?leerID=<%=a.getID()%>"><input type="submit" value="Read" class="boton_read"> </a></td>
			
			
		</tr>
		<%
			}
		%>
	</table>
	</div>
	<% 
		} else {
	%>
	<p><span class="heading">No hay recomendaciones disponibles.</span></p>
	<%
		}
	%>
	<a href="/Recomendaciones/Add" ><input  class="btn btn-primary btn-lg" type="submit" value="Crear Recomendacion" class="boton_crear"></a>
</div>
</body>
</html>