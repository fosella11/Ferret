<%@ include file="/common/taglibs.jsp"%>
<form:form commandName="pedido">
<table border="0" align="center">
	<tr >
		<td>&nbsp;</td>
		<td><label>Lista de Pedidos</label></td>
		<td>&nbsp;</td>
	</tr>
	<tr valign="top">
		<td>&nbsp;</td>
		<td>
			<fieldset>
				<legend>Filtros de B&#250;squeda:</legend>
				<table border="0">	
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
				  	</tr>						  
					<tr>
						<td>Código: </td>
						<td><form:input path="code" maxlength="50"/></td>
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
						    <input type="button" id="Agregar" name="Agregar" 
						    	onclick="location.href='<c:url value="/pedidoView.htm"/>'"
						        value="Agregar"/>
						</td>
						<td>&nbsp;</td>
						<td><input type="submit" id="Buscar" name="Buscar"  value="Buscar"/></td>
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
		<td valign="top">		
			<table>
				<thead>
					<tr>
						<td>codigo</td>
						<td>calle</td>	
						<td>total</td>
						<td>Estado</td>													
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



				