<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Product" %>
<%@ page import="java.util.List" %>
<% List<Product> productos= (List<Product>)request.getAttribute("productos"); %>
<% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Product Display</title>
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
		<table class="table table-hover">
		<tr class="line"><td>Nombre</td><td>precio</td><td>ID</td><td>Status</td><td>stock</td><td>fecha de Creación</td></tr>
		<%for(int i=0;i<productos.size();i++){
			Product producto= productos.get(i);
			int ind=i%2;
			%>
				<tr class="line<%=ind%>">
					<td><%=producto.getNombre()%></td>
					<td><%=producto.getPrecio()%></td>
					<td><%=producto.getId()%></td>
					<td><%=producto.getStatus()%></td>
					<td><%=producto.getStok()%></td>
					<td><%=producto.getFecha()%></td>
					<td><a href="/Product/Read?idProducto=<%=producto.getId()%>">View</a></td>
					<td><a href="/Product/Create?mode=update&idProducto=<%=producto.getId()%>">Update</a></td>
					<td><a href="/Product/Delete?idProducto=<%=producto.getId()%>">Delete</a></td>
				</tr>
			<% 
		}
		%>
		<a href="/Product/Create?mode=create">Crear Nuevo Producto</a>
		</table>
	</div>
</body>
</html>