<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
  
    <%@page import="model.*" %>
    <%@page import="java.text.*" %>
    <%@page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Editar Cliente</title>
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
		<h1>Editar Jaula</h1>


		<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		Jaula editarJaula=(Jaula)request.getAttribute("editJaula");
		List<Account> cuentas = (List<Account>)request.getAttribute("cuentas");
		
		
		%>		
		<form  class="form-control" action="/Clientes/Edit?action=guardar&cambiarID=<%=editarJaula.getID() %>" method="Post">
	
		<table class="table table-bordered table-hover">
		<tr>
			<td id="titulo">Editar Jaula</td>
		</tr>
		<tr>
			<td><label for="email">Email</label></td>
         </tr>
         <tr>
         	<th><select name="email">
				<%
					for (int i = 0; i < cuentas.size(); i++) {
				%>
					<option value=<%=cuentas.get(i).getCorreo() %>><%=cuentas.get(i).getCorreo()%></option>
				<%}%>
			</select></th>
         </tr>
		<tr>
			<td><label for="fecha">Fecha</label></td>
        </tr>
        <tr>
			<td><input type="date" name="fecha" value=<%=sdf.format(editarJaula.getFecha())%> id="fecha"></td>
		</tr>
		<tr>
			<th>
			<input type="submit" value="Guardar Cambios" class="btn btn-primary">
			</th>
		</tr>
	</table>
	</form>
	</div>
</body>
</html>