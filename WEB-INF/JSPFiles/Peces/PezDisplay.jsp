
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="model.*"%>
<%@ page import="java.util.*"%>
<%
	Pez pescadito = (Pez) request.getAttribute("Pez");
	List<Comentario>comentarios= (List<Comentario>)request.getAttribute("Comentarios");
%>
<% String menu= (String)request.getAttribute("menu"); %>
<html>
<head>
<meta name="viewport"
	content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Peces(CRUD)</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="../css/animate.css">
<link href="../css/animate.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet" />
</head>
<body>
	<header id="header">
		<nav class="navbar navbar-default navbar-static-top " role="banner">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<div class="menu">
						<ul class="nav nav-tabs " role="tablist">
							<li role="presentation"><a href="../index.jsp"
								class="active">Casa</a></li>
						<%=menu%>
							<li role="presentation"><a href="/UserLogin">Login</a></li>
							<li role="presentation"><a href="/UserLogout">Logout</a></li>
							<li role="presentation"><a href="/User/Register">Registrarse</a></li>
							<li role="presentation"><a href="/Product/Display">Productos</a></li>
							<li role="presentation"><a href="/peces">Peces</a></li>
							<li role="presentation"><a href="/lab08_foro">Foro</a></li>
							<li role="presentation"><a href="/Recomendaciones">Recomendaciones</a></li>
							<li role="presentation"><a href="/Clientes">Clientes</a></li>
							<li role="presentation" style="margin-left: 45%"><div
									class="navbar-brand">
									<a href="../index.jsp"><h1>OMEGA-AQP</h1></a>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<div class="container">
		<div class="row">
			<div class="col md-5 col-md-offset-1 col xs-5 col-xs-offset-1"
				id="table">
				<span class="nav"><a href="/peces?action=PezLookup">Catalogo</a></span><br>
				<div class="form-group">
					<span class="title">Caracteristicas:</span>
				</div>
				<table class="table table-bordered">
					<tr bgcolor="#407BA8">
						<td style="color: #ffffff; font-weight: bold;">Codigo:</td>
						<td bgcolor="#ffffff"><%= pescadito.getId() %></td>
					</tr>
					<tr bgcolor="#407BA8">
						<td style="color: #ffffff; font-weight: bold;">Nombre:</td>
						<td bgcolor="#ffffff"><%= pescadito.getNombre() %></td>
					</tr>
					<tr bgcolor="#407BA8">
						<td style="color: #ffffff; font-weight: bold;">Orden:</td>
						<td bgcolor="#ffffff"><%=pescadito.getOrden()%></td>
					</tr>
					<tr bgcolor="#407BA8">
						<td style="color: #ffffff; font-weight: bold;">Familia:</td>
						<td bgcolor="#ffffff"><%=pescadito.getFamilia()%></td>
					</tr>
					<tr bgcolor="#407BA8">
						<td style="color: #ffffff; font-weight: bold;">Género:</td>
						<td bgcolor="#ffffff"><%=pescadito.getGenero()%></td>
					</tr>
					<tr bgcolor="#407BA8">
						<td style="color: #ffffff; font-weight: bold;">Precio</td>
						<td bgcolor="#ffffff"><%=pescadito.getPrecio()%></td>
					</tr>
					<tr bgcolor="#407BA8">
						<td style="color: #ffffff; font-weight: bold;">Stock:</td>
						<td bgcolor="#ffffff"><%=pescadito.getStock()%></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<form method="post" action="/lab08_foro?PezId=<%=pescadito.getId()%>" class="comentaPez">
		<input type="hidden" name="PezId" value="{{PezId}}">
		<input type="hidden" name="ComentarPez" value="ComentarPez">
		<textarea name="comentario" placeholder="Ingrese comentario Pez"  required style="margin-left:14%;width:79.5% ;height:10%    "></textarea><br>
		<input  class="btn btn-primary btn-lg" type="submit" value="Comentar" style="margin-left:48%">
	</form>
		<div class="container" style="margin-left: 8%">
			<table class="table table-bordered table-hover">
				<% if(comentarios!=null){
				for( Comentario comentario : comentarios  ){
				%>
				<tr>
					<td><%=comentario.getCorreo()%></td>
					<td><%=comentario.getComentario()%></td>
				</tr>
				<%
				}}
			%>
			</table>
		</div>
</body>
</html>



