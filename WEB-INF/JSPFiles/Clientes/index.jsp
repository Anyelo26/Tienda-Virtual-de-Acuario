<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Jaula"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*" %>

<%
List<Jaula> jaulas = (List<Jaula>) request.getAttribute("jaulas");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Clientes</title>
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
							<li role="presentation"><a href="/Role/Display">Roles</a></li>
							<li role="presentation"><a href="/User/Display">Usuarios</a></li>
							<li role ="presentation"><a href="/Resource/Display">Resource</a></li>
							<li role="presentation"><a href="/Access/Display">Accesos</a></li>
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
<div class="container ">   
<h1>Lista de Jaulas</h1><br>

	<%
		if (jaulas.size() > 0) {
	%>
	<div id="main-container">
	<table class="table table-bordered table-hover">
		<tr>
			<th>Correo</th>
			<th>Fecha</th>
			<th>Delete</th>
			<th>UpDate</th>
			<th>Read</th>
		</tr>
		<%
			for (int i = 0; i < jaulas.size(); i++) {
		%>
		<%
			Jaula a = jaulas.get(i);
		%>
		<tr>
			<td><%=a.getEmail()%></td>
			<td><%=sdf.format(a.getFecha())%></td>
			<td><a href="/Clientes/Delete?accountID=<%=a.getID()%>"><input type="submit" value="Delete" class="btn btn-primary"> </a></td>
			<td><a href="/Clientes/Edit?action=primero&cambiarID=<%=a.getID()%>"><input type="submit" value="Update" class="btn btn-primary"> </a></td>
			<td><a href="/Jaulas?leerID=<%=a.getID()%>"><input type="submit" value="Vista" class="btn btn-primary"> </a></td>
			
			
		</tr>
		<%
			}
		%>
	</table>
	</div>
	</div> 
	<% 
		} else {
	%>
	<div><span class="heading">No se encontró</span></div>
	<%
		}
	%>
	<a href="/Jaulas/Add" ><input style="margin-left:45%" class="btn btn-primary btn-lg" type="submit" value="Agregar" class="boton_crear"></a>

	</body>
</html>