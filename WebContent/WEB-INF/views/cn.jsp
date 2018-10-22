<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Imprimiendo con JSTL y EL</title>
</head>
<body>
	<h1>Imprimiendo Vector</h1>
	<c:forEach items="${vector}" var="value">
      		<c:out value="${value }"/></br>
      </c:forEach>  
	<h1>Imprimiendo Array</h1>
	<c:forEach items="${array}" var="value">
      		<c:out value="${value }"/></br>
      </c:forEach>  
      <h1>Imprimiendo HashMap</h1>
	<c:forEach items="${hashmap}" var="value">
      		<c:out value="${value['value'] }"/></br>
      </c:forEach>  
</body>
</html>