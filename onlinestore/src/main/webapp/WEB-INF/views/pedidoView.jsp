<%@ include file="/common/taglibs.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/resources/css/pedidoView.css">

<form:form commandName="pedido">

	<table>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr valign="top">
			<td>&nbsp;</td>
			<td>
				<fieldset id="leyenda">
					<legend id="leyendafiltro">
						<b>Nuevo Pedido</b>
					</legend>
					<table width="555px" border="0" aling="center">
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						

						<tr>
							<td>&nbsp;</td>
							<td><h3>Código:</h3></td>
							<td><form:input class="textbox" path="code" maxlength="20" /></td>
							<td><form:errors path="code" /></td>
						</tr>

						<tr>


							<td>&nbsp;</td>
							<td><h3>Calle:</h3></td>
							<td><form:input class="textbox" path="calle" maxlength="50" /></td>
							<td><form:errors path="calle" /></td>

						</tr>

						<tr>
							<td>&nbsp;</td>
							<td><h3>Total:</h3></td>
							<td><form:input class="textbox" path="total" maxlength="50" /></td>
							<td><form:errors path="total" /></td>
						</tr>

						<tr>
							<td>&nbsp;</td>
							<td><h3>Estado:</h3></td>
							<td><form:select path="estado">
									<form:option value="activo">Activo</form:option>
									<form:option value="pendiente">Pendiente</form:option>
									<form:option selected="cancelado" value="cancelado">Cancelado</form:option>
									<form:option value="inactivo">Inactivo</form:option>
								</form:select></td>

						</tr>

						<tr>


							<td>&nbsp;</td>
							<td><h3>
									Producto<br> N° 1:
								</h3></td>
							<td><form:select class="textbox" path="producto1">
									<form:options class="textbox" items="${categoriesTypes}"
										itemLabel="name" itemValue="idProduct" />
								</form:select></td>


						</tr>
<%
for (int i = 1;i<10;i+=1){

	%>
						<tr>


							<td>&nbsp;</td>
							<td><h3>
									Producto<br> N° :<%=""+i%>
								</h3></td>
								<td></td>
							<td><form:select class="textbox" path="producto2">
									<form:options class="textbox" items="${categoriesTypes}"
										itemLabel="name" itemValue="idProduct" />
								</form:select></td>
						</tr>
						<%}	%>
						<tr>
						
							
						
							<td><c:if test="${not empty pedido.idPedido }">
									<input type="button" id="boton" name="Eliminar"
										onclick="location.href='<c:url value="/deletePedido.htm?idPedido=${pedido.idPedido}"/>'"
										value="Eliminar" />
								</c:if></td>

							<td><input type="submit" id="boton" name="Guardar"
								value="Guardar" /></td>

							<td><input type="button" id="boton" name="Cancelar"
								onclick="location.href='<c:url value="/pedidoList.htm"/>'"
								value="Cancelar" /></td>

						</tr>
					</table>
				</fieldset>
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>

</form:form>
