<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Search Results</title>
	<link rel="stylesheet" type="text/css" href="/static/css/style.css" />
</head>
<body>
	<p style="font-family: Arial,Helvetica,sans-serif; font-weight: bold; font-size: 200%; text-align: center;"> Cookbook Manager
	<a href="/"><img src="/static/home.png" alt="homebutton" width="15" height="15"></a>
	<a href="/recipes"><img src="/static/book.png" alt="homebutton" width="15" height="15"></a>
	<a href="/recipes/search"><img src="/static/search.png" alt="homebutton" width="15" height="15"></a>
	<p style="font-family: Arial,Helvetica,sans-serif; font-weight: bold; font-size: 100%; text-align: center;"> Procurar</p>		
	<hr style="width:50%; border: 1px solid #c00; align: center" />
	
	
	
	<c:forEach var="version" items='${results}'>
		<a href="/recipes/${version.externalId}"> <p style="text-align: center;"> ${version.title}</a><br/>
	</c:forEach>
	
	<c:if test="${empty results}">
		<p style="text-align: center;" > Sem resultados </p>
	</c:if>	
	
</body>
</html>