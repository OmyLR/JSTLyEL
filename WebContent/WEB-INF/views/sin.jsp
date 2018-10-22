<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Object[] objects = (Object[])application.getAttribute("vector");
		for(int i=0; i<objects.length; i++){
			out.print(objects[i]);
		}
	%>
</body>
</html>