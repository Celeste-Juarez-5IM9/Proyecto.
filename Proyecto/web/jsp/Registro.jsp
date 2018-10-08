<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../Recursos/css.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
    <center><h1>Registrate!</h1></center>

    <jsp:useBean id="usuario" scope="page" class="mx.edu.ipn.cecyt9.Anicare.model.Usuario"></jsp:useBean> 
            
<body>

		<!-- Header -->
			<header id="header" class="alt">
				<div class="inner">
					<h1>Anicare</h1>
					<p>Por la seguridad de tus mascotas</p>
				</div>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Banner -->
					<section id="intro" class="main">
						<article>
                                                    <h2>Registro</h2>
                                                        <form method="post" action="Registro.jsp">
                                                            <span>
                                                                <label for="nombre">Nombre</label>
                                                                <input type="text" name="nombre" id="nombre" >
                                                                
                                                            </span>
                                                            <br>
                                                            <span>
                                                                 <label for="apellidoPaterno">Apellido Paterno</label>
                                                                <input type="text" name="apellidoPaterno" id="apellidoPaterno" >
                                                               
                                                            </span>
                                                            <br>
                                                            <span>
                                                                  <label for="apellidoMaterno">Apellido Materno</label>
                                                                <input type="text" name="apellidoMaterno" id="apellidoMaterno" >
                                                              
                                                            </span>
                                                            <br>
                                                            <span>
                                                                <label for="telefono">Telefono</label>
                                                                <input type="text" name="telefono" id="telefono">
                                                                
                                                            </span>
                                                            <br>
                                                            <span>
                                                                <label for="nombreusu">Usuario</label>
                                                            <input type="text" name="nombreusu" id="nombreusu" >
                                                            
                                                            </span>
                                                            <br>
                                                            <span>
                                                                <label for="correo">Correo</label>
                                                            <input type="email" name="correo" id="correo" >
                                                            
                                                            </span>
                                                            <br>
                                                            <span>
                                                            <label for="contra">Contraseña</label>
                                                            <input type="password" name="contra" id="contra" >
                                                           
                                                            </span>
                                                            <br>
                                                            <span>
                                                             <label for="contra2">Repetir contraseña</label>
                                                            <input type="password" name="contra2">
                                                            
                                                            </span>
                                                            <br>
                                                            <input type="submit" class="btn btn-3" id="Hover me" value="Registrado">
                                                        </form>
                                                    </div> 
                                                </article>
					</section>

                                
                          

			</div>
            

        
    <%
    String usuario = request.getParameter("Usuario");
    %>

    ${usuario.setNombre("<%=usuario%>")}
    ${usuario.nombre}
        
        
    </body>
</html>
