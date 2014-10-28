<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<html>
<body>
	<h2>Spring's form checkbox example</h2>
 
 
 
         Favourite Web Frameworks :
	<c:forEach items="${pedido.pedidos}" var="name">
		[<c:out value="${productos}" />]
	</c:forEach>
	<br />
</body>
</html>