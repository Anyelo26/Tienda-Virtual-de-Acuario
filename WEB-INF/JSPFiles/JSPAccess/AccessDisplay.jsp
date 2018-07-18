<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Access" %>
<%@ page import="java.util.List" %>
<% List<Access> accesos= (List<Access>)request.getAttribute("accesos"); %>
<% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Access Display</title>
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
		<table class="table table-bordered table-hover">
		<tr class="line"><td>Rol</td><td>Recurso</td><td>ID</td><td>Status</td><td>Fecha de creación</td></tr>
		<%for(int i=0;i<accesos.size();i++){
			Access acceso= accesos.get(i);
			int ind=i%2;
			%>
				<tr class="line<%=ind%>">
					<td><%=acceso.getIdRole()%>:<%=acceso.getRol()%></td>
					<td><%=acceso.getIdUrl()%>:<%=acceso.getUrl()%></td>
					<td><%=acceso.getId()%></td>
					<td><%=acceso.getStatus()%></td>
					<td><%=acceso.getFecha()%></td>
					<td><a href="/Access/Read?idAcceso=<%=acceso.getId()%>">View</a></td>
					<td><a href="/Access/Create?mode=update&idAcceso=<%=acceso.getId()%>">Update</a></td>
					<td><a href="/Access/Delete?idAcceso=<%=acceso.getId()%>">Delete</a></td>
				</tr>
			<% 
		}
		%>
		</table>
		<a href="/Access/Create?mode=create">Crear Nuevo Acceso</a>
		</div>
</body>
</html>