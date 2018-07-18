<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.Role" %>
     <%@ page import="java.util.List" %>
     <%@page import ="com.google.appengine.api.users.*;" %>
<%
	String [] departamentos={"Amazonas","Áncash","Apurímac","Arequipa","Ayacucho","Cajamarca",
							 "Cuzco","Huancavelica","Huánuco","Ica","Junín","La Libertad","Lambayeque",
							 "Lima (departamento)","Loreto","Madre de Dios","Moquegua","Pasco","Piura",
							 "Puno","San Martín","Tacna","Tumbes","Ucayali"};


%>
	
<%

List<Role>roles= (List<Role>)request.getAttribute("roles"); 

String correo="";
String disable="";
String usuarioCorreo = (String)(request.getAttribute("correo"));
if(usuarioCorreo!=null){
	correo=usuarioCorreo;
	disable="disabled";
}
%><% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>User create</title>
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link href="../css/animate.min.css" rel="stylesheet"> 
	<link href="../css/style.css" rel="stylesheet" />	
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
	<script src="../../../scripts/LimitCuentas.js"></script>
	<script src="../../../scripts/validaDatos.js"></script>
	<script src="../../../scripts/ciudades.js"></script>
     
     <!-- ######## -->
</head>
<body onload="carga()">
	
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
    
    <div class=" container form-group">
    <h2 class="titulo">Crear una nueva Cuenta</h2>
    
	<a href="/User/Display" class="atras">Back</a>
	
	<form action="/UserCreatePersistent" method="get"  onsubmit="return LimitCuentas()">
		<input type="hidden" name="mode" value="create">
		<p>Departamento</p>
						<select id="departamento">
											<%
											for(int i=0;i<departamentos.length;i++){
											%>	
											<option onclick="cambiaCiudades()">
												<%=departamentos[i]%>
											</option>
											<%	
											}	
											%>	
						</select>
		<p>Ciudad</p>
			<select id="ciudades" name="ciudad"></select>
		
		<% if (usuarioCorreo==null){ %>
		<p>Rol</p>
			<select id="roles" name="rol">
							<%
							for(int i=0;i<roles.size();i++){
								%>
									<option><%=roles.get(i).getNombre() %></option>
								<% 
							}
							%>
			</select>
		<%}else{ %>
			<input type="hidden" name="rol" value="invitado">
		<%} %>
		
		<p>Teléfono</p>
		<input type="text"  placeholder="Teléfono" name="telefono" 
					 onkeypress="return soloNumeros(event,this.value)" onpaste="return false">
				
		<p>Correo</p>
		<input type="text" placeholder="Paco45@gmail.com" name="correo"
					onkeyup="validaMail()" value="<%=correo%>" id="correo"><br>
		<input  class="btn btn-primary" type="submit" value="Guardar" id="crearCuenta" disabled>
	</form>
	</div>
</body>
</html>