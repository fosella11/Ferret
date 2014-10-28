<%@ include file="/common/taglibs.jsp"%>

<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css/productList.css">

<form:form commandName="product">
<table border="0" align="center">
	<tr >
		<td>&nbsp;</td>
		<td><h2><center>Lista de Productos</center></h2></td>
		<td>&nbsp;</td>
	</tr>
	<tr valign="top">
		<td>&nbsp;</td>
		<td>
			<fieldset id="leyenda">
				<legend id="leyendafiltro"><b>Filtro de Producto:</b></legend>
				<table width="455px"  border="0">	
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
				  	</tr>						  
					<tr>
						<td><h3>Nombre: </h3></td>
						<td><form:input class="textbox" path="name" maxlength="50"/></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					 <tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
						    <input type="button" id="boton" name="Agregar" 
						    	onclick="location.href='<c:url value="/productView.htm"/>'"
						        value="Agregar"/>
						</td>
						<td>&nbsp;</td>
						<td><input type="submit" id="boton" name="Buscar"  value="Buscar"/></td>
						<td>&nbsp;</td>				
					</tr>				  					  
				</table>	
			</fieldset>					
		</td>
		<td>&nbsp;</td>									
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>	
		<td>&nbsp;</td>	
	</tr>
	<tr>
		<td>&nbsp;</td>	
		<td valign="top" id="listaprod">		
			<table width="455px" id="listaTablaProd">
				<thead>
					<tr>
						<td id="tabTitulo"><center>Nombre</center></td>
						<td id="tabTitulo"><center>Precio</center></td>	
						<td id="tabTitulo"><center>Código</center></td>														
					</tr>								
				</thead>
				<tbody>
					<c:forEach var="product" items="${products}">
						<tr>
							<td><a href="productView.htm?idProduct=${product.idProduct}"><c:out value="${product.name}"/></a></td>
							<td>$ <c:out value="${product.price}"/></td>
							<td>$ <c:out value="${product.code}"/></td>																
							
						</tr>								
					</c:forEach>																																																					
				</tbody>
			</table>												
		</td>
		<td>&nbsp;</td>			
	</tr>		
</table>	
</form:form>



				