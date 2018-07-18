<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.*"%>
<%List<Account> cuentas=(List<Account>)request.getAttribute("cuentas");
List<Pez> peces=(List<Pez>)request.getAttribute("peces");
String mensaje=(String)request.getAttribute("mensaje");if(mensaje==null){mensaje="";}%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Crear Jaula</title>
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
							<li role="presentation"><a href="/Role/Display">Roles</a></li>
							<li role="presentation"><a href="/User/Display">Usuarios</a></li>
							<li role ="presentation"><a href="/Resource/Display">Resource</a></li>
							<li role="presentation"><a href="/Access/Display">Accesos</a></li>
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
<span class="nav"><a href="/Clientes">Regresar </a></span>
		<h1>Crear una nueva jaula</h1>
		<form method="post" action="/Jaulas/Add">
			<input type="hidden" name="action" value="JaulaCreateDo"/>
			<table  class="table table-bordered">
		<tr>
        	<td id="titulo">Agregar </td>
        </tr>
		<tr >
			<td><label for="email">Correo</label></td>
         </tr>
         <tr>
			<th><select name="email">
				<%
					for (int i = 0; i < cuentas.size(); i++) {
				%>
					<option value=<%=cuentas.get(i).getCorreo() %>><%=cuentas.get(i).getCorreo()%></option>
				<%} %>
			</select></th>
		</tr>
		<tr >
			<td><label for="pez">Pez</label></td>
         </tr>
         <tr>
			<th><select name="pez">
				<%
					for (int i = 0; i < peces.size(); i++) {
				%>
					<option value=<%=peces.get(i).getId() %>><%=peces.get(i).getNombre()%></option>
				<%} %>
			</select></th>
		</tr>
		<tr>
			<td><label for="fecha">Fecha</label></td>
           </tr>
           <tr>
			<th><input type="date" name="fecha" id="fecha" required></th>
		</tr>
		<tr>
			<td><label for="fecha">Estatus</label></td>
           </tr>
           <tr>
			<th><select name="status">
				<option value="Vivo">Vivo</option>
				<option value="Muerto">Muerto</option>
			</select></th>
		</tr>
		<tr>
       
			<th>
			<input  class="btn btn-primary" type="submit" value="Agregar" class="boton_crear">
			</th>
           
		</tr>
	</table>
	</form>
	</div>
	</body>
</html>