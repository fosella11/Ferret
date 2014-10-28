<%@ include file="/common/taglibs.jsp"%>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&appId=533529310026718&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css/productView.css">

<form:form commandName="product">		
	<table border="0" align="center">
		<tr>
			<td>&nbsp;</td>
			<td><center><h2>Agregar Producto</h2></center></td>
			<td>&nbsp;</td>
		</tr>
		<tr valign="top">
			<td>&nbsp;</td>
		<td>
			<fieldset id="leyenda">
				<legend id="leyendafiltro"><b>Nuevo Producto:</b></legend>
				<table width="455px" border="0">
				<tbody id="table">					
					<tr>		
								
						<td><h3>Nombre:</h3></td>
						<td><form:input path="name" maxlength="50" class="textbox" placeholder="Campo Obligatorio"/></td>
						<td>&nbsp;</td>
						<td><font style="font-weight: bold; font-size: 25pt; color: red; float: right;;">*</font> 
						<td><form:errors path="name"/></td>
					</tr>
					
					<tr>
						
						<td><h3>Tipo: </h3></td>
						<td>
							<form:select class="textbox" path="category.idCategory">
								<form:options items="${categoriesTypes}" class="textbox" itemLabel="name" itemValue="idCategory"/>										
							</form:select>
						</td>	
						<td>&nbsp;</td>
						<td><font style="font-weight: bold; font-size: 25pt; color: red;float: right;">*</font> &nbsp;
												
					</tr>		
								
					<tr>		
									
						<td><h3>Código: </h3></td>
						<td><form:input path="code" maxlength="20" class="textbox" placeholder="Campo Obligatorio"/></td>
						<td>&nbsp;</td>
						<td><font style="font-weight: bold; font-size: 25pt; color: red;float: right;">*</font> &nbsp;
						<td><form:errors path="code"/></td>
					</tr>
												  				
					<tr>
					
						<td><h3>Descripción: </h3></td>
						<td><form:textarea path="description" cols="30" rows="5" class="textbox" placeholder="Descripcion Producto"></form:textarea></td>
				
					</tr>
					
					<tr>
					
						<td><h3>Precio: </h3></td>
						<td><form:input path="price" maxlength="8" class="textbox" placeholder="Campo Obligatorio"/></td>
						<td>&nbsp;</td>
						<td><font style="font-weight: bold; font-size: 25pt; color: red; float: right;">*</font> &nbsp;</td>
						<td><form:errors path="price"/></td>
					</tr>
					<tr> 
						<td>&nbsp;</td> 
						<td><p>Los campos marcados con asterisco (*) son obligatorios.</p></td>
						
					</tr> 
					<td>&nbsp;</td>
					</tbody>
					<tr>

						<td>
							<input type="submit" id="boton" name="Guardar" value="Guardar" />
						
							<c:if test="${not empty product.idProduct }">
									<input type="button" id="boton" name="Eliminar" 
											onclick="location.href='<c:url value="/deleteProduct.htm?idProduct=${product.idProduct}"/>'"
											value="Eliminar" />									
							</c:if>		
							
							<input type="button" id="boton" name="Cancelar" 
									onclick="location.href='<c:url value="/productList.htm"/>'"
									value="Cancelar"	/>		
						</td>
						<td>&nbsp;</td>
					</tr>		
							
						<tr>		
							<td>
							<div class="fb-like" data-href="https://developers.facebook.com/KennethHardwareStores" data-layout="box_count" data-action="like" data-show-faces="true" data-share="true"></div>
							</td>
						</tr>		
																																																																																																																
				</table>
			</td>
			<td>&nbsp;</td>									
		</tr>		
	</table>	
	</fieldset>		
</form:form>				