<%@ page import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name ="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<title></title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link href="../css/animate.min.css" rel="stylesheet"> 
	<link href="../css/style.css" rel="stylesheet" />
</head>
<%
Pez pescadito= (Pez)request.getAttribute("Pez");
%>
<% String menu= (String)request.getAttribute("menu"); %>
<body >

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

<div class="container" id="table" style="margin-left:-10%" >
	<div class="col xs-9 col-xs-offset-3 col md-6 col-md-offset-5"  >
	<span class="nav"><a href="/peces?action=PezLookup">Catalogo</a></span><br>
	<div class="form-group"><span class="title">Editando el Pez</span></div>	
	<form method="Get" action="/peces/update" >
	<input type="hidden"  name="action" value="Update">
	<input type="hidden"  name="PezId" value="<%=pescadito.getId()%>">
		<table class="table table-bordered" >
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Codigo: </td>
				<td bgcolor="#ffffff"><input type="text" name="Codigo" value="<%=pescadito.getId()%>" readonly></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Nombre: </td>
				<td bgcolor="#ffffff"><input type="text" name="Nombre" value="<%=pescadito.getNombre()%>" required></td>
			</tr>
			<tr bgcolor="#407BA8">

				<td style="color: #ffffff; font-weight: bold;">Orden:</td>
				<td bgcolor="#ffffff"><input type="text" name="Orden" value="<%= pescadito.getOrden() %>" required></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Familia:</td>

				<td bgcolor="#ffffff"><input type="text" name="Familia" value="<%=pescadito.getFamilia()%>" placeholder="opcional"></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Genero: </td>
				<td bgcolor="#ffffff"><input type="text" name="Genero" value="<%=pescadito.getGenero()%>" placeholder="opcional"></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Precio: </td>
				<td bgcolor="#ffffff"><input type="number" name="Precio" value="<%= pescadito.getPrecio()%>" pattern ="^\d{1,3}(?:,\s?\d{3})*(?:\.\d*)?$" required></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Stock: </td>
				<td bgcolor="#ffffff"><input type="number" name="Stock" value="<%= pescadito.getStock()%>" required></td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="#ffffff" align="center"><br>
				 <input type="submit" value="Actualizar" class="btn btn-primary"></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
</body>
</html>
