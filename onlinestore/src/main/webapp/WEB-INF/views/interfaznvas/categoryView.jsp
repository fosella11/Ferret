<%@ include file="/common/taglibs.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css/categoryView.css">
<form:form commandName="category">		
	<table border="0" align="center">
		<tr>
			<td>&nbsp;</td>
			<td><center><h2>Agregar Categoria</h2></center></td>
			<td>&nbsp;</td>
		</tr>
		<tr valign="top">
			<td>&nbsp;</td>
					
			<td>
			<fieldset id="leyenda">
				<legend id="leyendafiltro"><b>Nueva Categoria:</b></legend>		
				<table width="455px" >		
					<tbody id="table">
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>	
					<tr>		
						<td>&nbsp;</td>			
						<td><h3>Nombre:</h3></td>
						<td><form:input class="textbox" path="name" maxlength="50"/></td>
						<td><form:errors path="name"/></td>
					</tr>
					
			
					<tr>		
						<td>&nbsp;</td>			
						<td><h3>Código:</h3></td>
						<td><form:input class="textbox" path="code" maxlength="20"/></td>
						<td><form:errors path="code"/></td>
					</tr>
															
					</tbody>
					
					<tr>
					
						<td>
							<input type="button" id="boton" name="Cancelar" 
									onclick="location.href='<c:url value="/categoryList.htm"/>'"
									value="Cancelar"/>	
									
							<input type="submit" id="boton" name="Guardar" value="Guardar"/>
						
							<c:if test="${not empty category.idCategory }">
									<input type="button" id="boton"  name="Eliminar" 
											onclick="location.href='<c:url value="/deleteCategory.htm?idCategory=${category.idCategory}"/>'"
											value="Eliminar"/>									
							</c:if>
								
								
						</td>
						<td>&nbsp;</td>
					</tr>																														
				</table>
				</fieldset>	
			</td>
				
			<td>&nbsp;</td>									
		</tr>	
		
	</table>	
</form:form>	