<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Resource" %>
<%@ page import="java.util.List" %>
<% List<Resource> recursos= (List<Resource>)request.getAttribute("recursos"); %>
<% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OMEGA-AQP</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link href="../css/animate.min.css" rel="stylesheet"> 
	<link href="../css/style.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
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
		<table class="table table-hover table-bordered">
		<tr class="line"><td>Nombre</td><td>Fecha de Creación</td><td>ID</td><td>Status</td></tr>
		<%for(int i=0;i<recursos.size();i++){
			Resource recurso= recursos.get(i);
			int ind=i%2;
			%>
				<tr class="line<%=ind%>">
					<td><%=recurso.getUrl()%></td>
					<td><%=recurso.getCreado()%></td>
					<td><%=recurso.getId()%></td>
					<td><%=recurso.isStatus()%></td>
					<td><a href="/Resource/Read?idRecurso=<%=recurso.getId()%>">View</a></td>
					<td><a href="/Resource/Create?mode=update&idRecurso=<%=recurso.getId()%>">Update</a></td>
					<td><a href="/Resource/Delete?idRecurso=<%=recurso.getId()%>">Delete</a></td>
				</tr>
			<% 
		}
		%>
		</table>
		<a href="/Resource/Create?mode=create">Crear Nuevo Recurso</a>
		</div>
	
</body>
</html>