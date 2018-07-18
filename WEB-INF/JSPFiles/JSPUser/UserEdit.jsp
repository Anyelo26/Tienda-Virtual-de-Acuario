<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Account" %>
<%@ page import="model.Role" %>
<%@ page import="java.util.List" %>
<% String menu= (String)request.getAttribute("menu"); %>
<%Account usuario= (Account)request.getAttribute("usuario");
Account usuarioGoogle = (Account)request.getAttribute("userGoogle");
%> 
<%
//CIUDADES DEL PERÚ
	String [] departamentos={"Amazonas","Áncash","Apurímac","Arequipa","Ayacucho","Cajamarca",
							 "Cuzco","Huancavelica","Huánuco","Ica","Junín","La Libertad","Lambayeque",
							 "Lima (departamento)","Loreto","Madre de Dios","Moquegua","Pasco","Piura",
							 "Puno","San Martín","Tacna","Tumbes","Ucayali"};
%>

<%
	boolean administrador=false;
	List<Role>roles= (List<Role>)request.getAttribute("roles");
	for(int i=0;i<roles.size();i++){
		if(roles.get(i).getNombre().equalsIgnoreCase("Administrador")){
			if(roles.get(i).getId().compareTo(usuarioGoogle.getIdRole())==0){
				administrador=true;
				break;
			}
		}
	}
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>User Edit</title>
	
<!--  STYLES -->
	
     <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
       <link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link href="../css/animate.min.css" rel="stylesheet"> 
	<link href="../css/style.css" rel="stylesheet" />
     <!--  SCRIPTS -->
     
	<script src="../../scripts/LimitCuentas.js"></script>
	<script src="../../scripts/validaDatos.js"></script>
	<script src="../../scripts/ciudades.js"></script>
     
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
    <div class="container">
 	<h2 class="titulo">Editar Rol</h2>
	<a href="/User/Display" class="atras">Volver</a>
	
	<form  action="/User/Update?idUsuario=<%=usuario.getId()%>" method="post" class="formulario">
	<div class="form-group"><input type="hidden" name="idUsuario" value="{{idUsuario}}">
		
		
		Departamento<br>
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
		<br>
		</div>
		<div class="form-group">
		Ciudad<br>
			<select id="ciudades" name="ciudad"></select>
		<br>
		
		<%if(administrador){ %>
		</div>
		<div class="form-group">
		Rol<br>
			<select id="roles" name="rol">
							<%
							for(int i=0;i<roles.size();i++){
								if(roles.get(i).getId()==usuario.getIdRole()){
									%>
									<option selected><%=roles.get(i).getNombre()%></option>
									<% 
								}else{
									%>
									<option><%=roles.get(i).getNombre()%></option>
									<% 
								}
								
							}
							%>
			</select></div>
		<%}
		else{%>	
			
			<input type="hidden" name="rol" value="invitado">
		<%} %>
		<br>
		Teléfono<br>
		<input type="text"  placeholder="Teléfono" name="telefono" 
					 onkeypress="return soloNumeros(event,this.value)" onpaste="return false" value="<%=usuario.getPhone()%>">
		
		<br><br>
		Correo<br>
		<input type="text" placeholder="Paco45@gmail.com" name="correo"
					onkeyup="validaMail()" id="correo" value="<%=usuario.getCorreo()%>">
		<br><br>
		<input class="btn btn-primary" type="submit" value="Save" id="crearCuenta" disabled>
		
	</form>
	</div>
</body>
</html>