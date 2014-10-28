<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
  "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login de ferreteria G+</title>
    </head>
    <body>
       
        <h2>ferreteria G+</h2>
 
        <form action="<%=request.getContextPath()%>/HolaUsuarioServlet" method="post">
            Usuario: <input type="text" name="usuario" value="" size="15" />
            Contraseña: <input type="password" name="password" value="" size="15" />
 
            <input type="submit" value="Enviar" name="botonEnviar" />
            <input type="reset" value="Limpiar" name="botonLimpiar" />
        </form>
    </body>
</html>