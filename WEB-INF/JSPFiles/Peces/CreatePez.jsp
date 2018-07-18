<% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE html>
<html>
<head>
<meta name ="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
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
							<li role="presentation"><a href="../index.jsp"class="active">Casa</a></li>
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
	<div class="row container" id="table" style="margin-left:-13%">
	<div class="col xs-7 col-xs-offset-5 col md-6 col-md-offset-6 col sm-7 col-sm-offset-5" >
	<span class="nav"><a href="/peces?action=PezLookup">Catalogo</a></span ><br>
	<div class="form-group"><span class="title">Agregar un Nuevo Pez</span></div>
	<form method="Get" action="/peces/add" >
		<input type="hidden" name="action" value="PezCreateDo" />
		<table class="table table-bordered" >
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Nombre: </td>
				<td bgcolor="#ffffff"><input type="text" name="Nombre" required></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Orden:</td>
				<td bgcolor="#ffffff"><input type="text" name="Orden"required></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Familia:</td>

				<td bgcolor="#ffffff"><input type="text" name="Familia" placeholder="opcional"></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Genero: </td>
				<td bgcolor="#ffffff"><input type="text" name="Genero" placeholder="opcional"></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Precio: </td>
				<td bgcolor="#ffffff"><input type="text" name="Precio" pattern ="^\d{1,3}(?:,\s?\d{3})*(?:\.\d*)?$" required ></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Stock: </td>
				<td bgcolor="#ffffff"><input type="number" name="Stock" required></td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="#ffffff" align="center">
				<input type="submit" value="Submit" class="btn btn-primary"></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
</body>
</html>
