<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe List</title>
</head>
<body>
	<div id="logo" style="width: 10px">
		<img src="/static/listar.png" alt="logo">
	</div>
	<br />
	<c:forEach var="recipe" items='${recipes}'>
		<a href="/recipes/${recipe.id}">${recipe.titulo}</a>
		<br />
	</c:forEach>
	<a href="/"><input type="submit" value="Back"></a>
</body>
</html>