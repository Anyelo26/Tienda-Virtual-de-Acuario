<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*" %>

<%
if(request.getAttribute("peces")!=null&&request.getAttribute("nombres")!=null){
ArrayList<ElementoJaula> peces= (ArrayList<ElementoJaula>) request.getAttribute("peces");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
ArrayList<String> nombres=(ArrayList<String>) request.getAttribute("nombres");

%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Jaula</title>
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
    <div class="container">
<h1>Lista de Peces</h1><br>

	<%
		if (peces.size() > 0) {
	%>
	<div id="main-container">
	<table class="table table-bordered table-hover">
	<thead class="thead thead-hover">
		<tr>
			<th>Nombre</th>
			<th>Estado</th>
			<th>Fecha</th>
			<th>Delete</th>
			<th>UpDate</th>
			
		</tr>
	</thead>
		<%
			for (int i = 0; i < peces.size(); i++) {
		%>
		<%
			String status="Muerto";
			ElementoJaula a = peces.get(i);
			if(a.getStatus()){
				status="Vivo";
			}
			
		%>
		<tr>
			<td><%=nombres.get(i)%></td>
			<td><%=status%></td>
			<td><%=sdf.format(a.getFecha())%></td>
			<td><a href="/Jaulas/Delete?pezID=<%=a.getID()%>&idJaula=<%=request.getParameter("leerID")%>"><input class="btn btn-primary" type="submit" value="Delete" class="boton_delete"> </a></td>
			<td><a href="/Jaulas/Edit?action=primero&cambiarID=<%=a.getID()%>"><input class="btn btn-primary" type="submit" value="Update" class="boton_update"> </a></td>
			
		</tr>
		<%
			}}
		%>
	</table>
	</div>
	<% 
		} else {
	%>
	<span class="heading">No existen jaulas agregados.</span>
	<%
		}
	%>
	</div>
	</body>
</html>