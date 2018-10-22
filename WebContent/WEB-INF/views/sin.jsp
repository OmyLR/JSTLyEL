<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Imprimiendo Vector de Objetos</h1>
	<%
		Object[] objects = (Object[])application.getAttribute("vector");
		for(int i=0; i<objects.length; i++){
			out.println(objects[i]+"</br>");
		}
	%>
	
	<h1>Imprimiendo Array de Objetos</h1>
	<%

		ArrayList<Object> array = (ArrayList<Object>)application.getAttribute("array");
		for(int i=0; i<array.size(); i++){
			out.println(array.get(i)+"</br>");
		}
	%>
	
	<h1>Imprimiendo HashMap de Objects</h1>
	<%

		HashMap<String, Object> hash = (HashMap<String, Object>)application.getAttribute("hashmap");
		for(String key : hash.keySet()){
			out.println(hash.get(key)+"</br>");
		}
	%>
</body>
</html>