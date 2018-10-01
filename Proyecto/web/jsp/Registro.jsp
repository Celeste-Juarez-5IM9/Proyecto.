<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <center><h1>Registrare!</h1></center>

    <jsp:useBean id="usuario" scope="page" class="mx.edu.ipn.cecyt9.Anicare.model.Usuario"></jsp:useBean> 
            
    <input type="text" name="Usuario" id="Usuario"> 
    <input type="password" name="Contrasena" id="Contrasena"> 
    <input type="" name="" id="">
    
            
    <%
    String usuario = request.getParameter("Usuario");
    %>

    ${usuario.setNombre("<%=usuario%>")}
    ${usuario.nombre}
        
        
    </body>
</html>
