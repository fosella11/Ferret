
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
           //Capturamos los datos enviados desde el servlet
           String nombres = (request.getAttribute("password")).toString();
           String apellidos = (request.getAttribute("username")).toString();
       %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! <%=nombres + " " + apellidos%></h1>
    </body>
</html>