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
	<c:forEach var="recipe" items='${recipes}'>
		<a href="/recipes/${recipe.externalId}">${recipe.externalId} ${version.externalId}</a>
		<a href="/recipes/${recipe.externalId}/edit"><input type="submit" value="Editar">
		<a href="/recipes/${recipe.externalId}/delete"><input type="submit" value="Apagar">
		<a href="/recipes/${recipe.externalId}/versions"><input type="submit" value="Versões"></a><br />
	</c:forEach>
	<br/>
</body>
</html>