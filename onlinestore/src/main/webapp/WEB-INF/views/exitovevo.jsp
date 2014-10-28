<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Login exitoso/ basico</title>
</head>
<body>
<center>Bienvenido a su panel de control:<br></center>
Nombre: ${ nombreModel}<br>
Apellido: ${ apellidoModel}<br>
			<br>
			
			
<table id="Table_02" width="775" border="30" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="2" width="101" height="31">
			<a href="http://localhost:8080/onlinestore/productList.htm">Lista de Productos</a>
			<a href="<c:url value="/productList.htm"/>">Lista de Proveedores</a>
			<a href="<c:url value="/productList.htm"/>">Lista de Categorias</a>
			<a href="<c:url value="/productList.htm"/>">Lista de Clentes</a>
			<a href="<c:url value="/irFormulario.htm"/>">logout</a>
		</td>
	</tr>	
</table>
			
			
			
</body>
</html>