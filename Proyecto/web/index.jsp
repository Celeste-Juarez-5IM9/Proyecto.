<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
if (request.getParameter("botonRegistro") != null){
%>
<jsp:forward page="jsp/Registro.jsp"/>
<%
return;
} 
    else if (request.getParameter("botonLogin") != null){
%>
    <jsp:forward page="jsp/Login.jsp"/>
<%
    return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        
        <form action="index.jsp">
            <input type="submit" name="botonRegistro" value="Registrar">
            <input type="submit" name="botonLogin" value="Iniciar Sesión">
        </form>
       
    </body>
</html>
