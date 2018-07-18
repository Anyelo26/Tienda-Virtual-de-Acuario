<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="model.Comentario" %>
   <%@page import="java.util.*" %>
<% List<Comentario> comentarios= (List<Comentario>)request.getAttribute("comentarios"); %>
	<% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Foro de Comentarios</title>
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
							<li role="presentation" style="margin-left:7%"><div class="navbar-brand">
								<a href="../index.jsp"><h1>OMEGA-AQP</h1></a>
							</div></li>
													
						</ul>
					</div>
				</div>		
            </div>
        </nav>		
    </header>
    <div class="container">
	<h2>Comentarios Acerca de la Pagina  OMega-	AQP</h2><br>
	<p>En el siguiente campo ingrese su opinión, denuncia, consulta, comentario o cualquier otra 
	cosa que desee compartir con los usuarios de la comunidad 'OmegaAQP'</p><br>
	<form method="post" action="/lab08_foro?mode=create">
	<input type="hidden" name="mode" value="{{mode}}">
	<textarea  class="form-control" style="resize:none; width:80%; height:70%" name="comentario" placeholder="Ingrese su Comentario"  ></textarea>
	<br><input style="margin-left:35%" class="btn btn-primary btn-lg	" type="submit" name="boton_enviar" value="Enviar">
	<%for(int i=0;i<comentarios.size();i++){
		%>
			<div>
			<p>Correo:<%=comentarios.get(i).getCorreo()%></p>
			<p>	Comentario:<%=comentarios.get(i).getComentario()%><br></p>
			</div>
			
		<% 
	}
	%>
	</form>
	</div>
</body>
</html>