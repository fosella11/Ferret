<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ include file="/common/taglibs.jsp"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix= "form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Login Ferreteria G +</title>
<link href="${pageContext.request.contextPath}/resources/css/est_principal_formulario.css" rel="stylesheet" >
	
</head>
<body>
<header>
	
		<center>
		
    <img src="${pageContext.servletContext.contextPath}/resources/images/cabecera.png"/>			
		</center>
		<br>
	</header>

	<div id="logear" vspace="25">
	
<form:form action="agregar.htm" method="POST" >
	<form:label path="nombre"> Nombre :</form:label>
	<form:input path="nombre"/>

	
	<form:label path="apellido">Password:</form:label>
	<form:input type="password" path="apellido"/>
	

	<input id=entrar type="submit" value="Entrar" />


</form:form>
	</div>
	
	<footer>
			<h1>
				Ferreteria G+  -  Rivadavia 528  -  Telefono: 0351-234736
			</h1>	
	</footer>
</body>
</html>