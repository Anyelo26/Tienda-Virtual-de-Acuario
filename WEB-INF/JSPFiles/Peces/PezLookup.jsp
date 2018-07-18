
<%@ page import="java.util.List"%>
<%@ page import="model.*"%>
<%List<Pez> peces = (List<Pez>) request.getAttribute("Peces");%>
<% String menu= (String)request.getAttribute("menu"); %>
<html>
<head>
<meta name="viewport"
	content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title></title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link href="../css/animate.min.css" rel="stylesheet"> 
	<link href="../css/style.css" rel="stylesheet" />
</head>
<body class="cuerpo">

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
				if (peces.size() > 0) {
			%>
	<div class="container">	
	<table class="table" style="margin-left: 0.1%" id="tableStyle">
		<tr>
			<td><span class="heading">Hay <%=peces.size()%> Peces en
					la Lista
			</span></td>
			<td><a href="/peces/add">Agregar Nuevo Pez</a></td>
		</tr>
	</table>
	<table  class="table table-hover">
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Nombre</td>
			<td style="color: #ffffff; font-weight: bold;">Precio</td>
			<td style="color: #ffffff; font-weight: bold;">Stock</td>
			<td style="color: #ffffff; font-weight: bold;">Operaciones</td>
		</tr>
		<%
					for (int i = 0; i < peces.size(); i++) {
				%>
		<%
					Pez a = (Pez) peces.get(i);
				%>
		<tr style="background: #ffffff"
			onMouseOver="this.style.background='#eeeeee';"
			onMouseOut="this.style.background='#ffffff';">
			<td><a href="/peces/view?action=PezDisplay&PezId=<%=a.getId()%>"><%=a.getNombre()%></a></td>
			<td><%=a.getPrecio()%></td>
			<td><%=a.getStock()%></td>
			<td><a href="/peces/update?action=Actualizar&PezId=<%=a.getId()%>">Editar</a>
				<a href="/peces/delete?action=Eliminar&PezId=<%=a.getId()%>">Eliminar</a>
			</td>
		</tr>
		<%
					}
				%>
	</table>
	</div>	
	<%
				} else {
			%>
	<div class="container"><span class="heading">No Hay Peces</span>
	<br>
	<a href="index.jsp">Atrás</a>
	<a href="/peces/add">Agregar Pez</a>
	<%
				}
			%>
			</div>
</body>
</html>