<%@ include file="/common/taglibs.jsp"%>
<form:form commandName="pedido">
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css/pedidoList.css">

<table border="0" align="center">
	<tr >
		<td>&nbsp;</td>
		<td><center><h2>Lista de Pedidos</h2></center></td>
		<td>&nbsp;</td>
	</tr>
	<tr valign="top">
		<td>&nbsp;</td>
		<td>
			<fieldset id="leyenda">
				<legend id="leyendafiltro"><b>Filtro de Pedidos:</b></legend>
				<table width="455px" border="0">	
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
				  	</tr>						  
					<tr>
						<td><h3>Código: </h3></td>
						<td><form:input class="textbox" path="code" maxlength="50"/></td>
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
						    	onclick="location.href='<c:url value="/pedidoView.htm"/>'"
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
			<table width="455px"  id="listaTablaProd">
				<thead>
					<tr>
						<td><h3><b>codigo</b></h3></td>
						<td><h3><b>calle</b></h3></td>	
						<td><h3><b>total</b></h3></td>
						<td><h3><b>Estado</b></h3></td>													
					</tr>								
				</thead>
				<tbody>
					<c:forEach var="pedido" items="${pedidos}">
						<tr>
							<td><a href="pedidoView.htm?idPedido=${pedido.idPedido}"><c:out value="${pedido.code}"/></a></td>
							<td> <c:out value="${pedido.calle}"/></td>
							<td> <c:out value="${pedido.total}"/></td>																
							<td> <c:out value="${pedido.estado}"/></td>
						</tr>								
					</c:forEach>																																																					
				</tbody>
			</table>												
		</td>
		<td>&nbsp;</td>			
	</tr>		
</table>	
</form:form>

<td><input type="button" id="boton" name="irinicio"
	onclick="location.href='<c:url value="/inicio.htm"/>'" value="INICIO" />
</td>


				