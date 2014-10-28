<%@ include file="/common/taglibs.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css/categoryList.css">

<form:form commandName="category">
<table border="0" align="center">
	<tr>
		<td>&nbsp;</td>
		<td><center><h2>Lista de Categorias</h2></center></td>
		<td>&nbsp;</td>
	</tr>
	<tr valign="top">
		<td>&nbsp;</td>
		<td>
			<fieldset id="leyenda">
				<legend id="leyendafiltro"><b>Filtro de Categoria:</b></legend>
				<table width="100%" border="0">	
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
						    <input type="button" id="boton" name="Agregar" value="Agregar"
						    	onclick="location.href='<c:url value="/categoryView.htm"/>'"
						        />
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
						
						<td><h3><b>Nombre</b></h3></td>
						<td><h3><b>Codigo</b></h3></td>	
																		
					</tr>								
				</thead>
				<tbody>
				
					<c:forEach var="category" items="${categorys}">
						<tr>
							<td id="listcat"> <a href="categoryView.htm?idCategory=${category.idCategory}"> <c:out value="${category.name}"/></a></td>
							<td id="listcat"> <center> <c:out value="${category.code}"/> </center></td>																			
						</tr>								
					</c:forEach>
																																																			
				</tbody>
			</table>												
		</td>
		<td>&nbsp;</td>			
	</tr>		
</table>	
</form:form>



