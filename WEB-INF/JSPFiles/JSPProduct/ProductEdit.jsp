<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Product" %>
<%@ page import="java.util.List" %>
<% String menu= (String)request.getAttribute("menu"); %>
<%Product producto= (Product)request.getAttribute("producto");
 %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Product Edit</title>
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
 <h2 class="titulo">Edit Access</h2>
	<a href="/ProductDisplay" class="atras">Back</a>
	
	<form action="/Product/Update?idProducto=<%=producto.getId()%>" method="post" class="formulario">
		<input type="hidden" name="idProducto" value="{{idProducto}}">
		<input type="hidden" name="mode" value="update">
		Nombre producto<br>
		<input type="text" name ="nombre" id="texto" value="<%=producto.getNombre()%>"><br>
		Precio<br>
		<input type="number" name ="precio" id="text" required value="<%=producto.getPrecio()%>"><br>
		Stok<br>
		<select name="stok">
		
			<%
			for(int i=0;i<20;i++){
				%>	
					<option><%=(i+1)%></option>
				<%
			}
			%>
		
		</select>
			
				
				<input type="submit" value="Guardar">
		
	</form>
</body>
</html>