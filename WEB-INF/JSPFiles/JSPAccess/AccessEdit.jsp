<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Access" %>
<%@ page import="model.Resource" %>
<%@ page import="model.Role" %>
<%@ page import="java.util.List" %>
<%Access acceso= (Access)request.getAttribute("acceso");
  List<Resource> recursos= (List<Resource>)request.getAttribute("recursos");
  List<Role> roles= (List<Role>)request.getAttribute("roles");
%> 
<% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Access Edit</title>

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
								<a href="index.jsp"><h1>OMEGA-AQP</h1></a>
							</div></li>
													
						</ul>
					</div>
				</div>		
            </div>
        </nav>		
    </header>
    <div class="container">
 <h2 class="titulo">Editar Acceso</h2>
	<a href="/Access/Display" class="atras">Volver</a><br><br>
	
	<form action="/Access/Update?idAcceso=<%=acceso.getId()%>" method="post" class="formulario">
	<input type="hidden" name="idAcceso" value="{{idAcceso}}">
		
				
				Rol<br>
				<select name="rol">
					<%for(int i =0;i<roles.size();i++){	
						if(roles.get(i).getId()==acceso.getIdRole()){
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
				</select>
				<br><br>
				Recurso<br>
				<select name="recurso">
					<%for(int i =0;i<recursos.size();i++){	
						if(recursos.get(i).getId()==acceso.getIdUrl()){
							%>
							 <option selected><%=recursos.get(i).getUrl()%></option>
							<%
						}else{
							%>
							 <option><%=recursos.get(i).getUrl()%></option>
							<%
						}
					  }
					 %>
				</select>
				<br><br>
				<input class="btn btn-primary" type="submit" value="Guardar">
		
	</form>
	</div>
</body>
</html>