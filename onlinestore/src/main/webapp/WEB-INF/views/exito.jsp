
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Bienvenido G+</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/resources/css/est_exito.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<body>
	<div id="panelsup">
		<center>
			<H1>
				Bienvenido a su panel de control<br>
			</H1>
		</center>

		<center>
			<h3>
				Nombre: ${ nombreModel}<br> Apellido: ${ apellidoModel}<br>
			</h3>
		</center>
	</div>

	<div id="Table_01">


		<table id="Table_02">

			<tr>
				<td>
					<ul id="list">
						<li><a id="linkboton"
							href="http://localhost:8080/onlinestore/productView.htm">Alta de Producto</a></li>
						<li><a id="linkboton"
							href="http://localhost:8080/onlinestore/productList.htm">Lista
								de Productos</a></li>
						<li><a id="linkboton"
							href="http://localhost:8080/onlinestore/categoryList.htm">Lista
								de Categorias</a></li>
						<li><a id="linkboton"
							href="http://localhost:8080/onlinestore/pedidoView.htm">Hacer
								un Pedido</a></li>
						<li><a id="linkboton"
							href="http://localhost:8080/onlinestore/pedidoList.htm">Listar
								Pedidos</a></li>
						
						<li><a id="linkboton"
							href="http://localhost:8080/onlinestore/pedidopendienteList.htm">Listar
								Pedidos Pendientes</a></li>
						
						<li><a id="linkboton"
							href="http://localhost:8080/onlinestore">Salir</a></li>

					</ul>
				</td>
				<td></td>
			</tr>

			<iframe class="frame-boton frame-content" width="982"></iframe>

			<script>
				$('li a').click(function(evento) {
					
					evento.preventDefault();
					var src=($(this).attr('href'));
					$('.frame-content').attr('src',src);
				});
			</script>


		</table>


	</div>

</body>
</html>


