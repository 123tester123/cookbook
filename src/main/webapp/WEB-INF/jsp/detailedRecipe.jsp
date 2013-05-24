<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe ${recipe.oid}</title>
</head>
<body>
	<div id="logo" style="width: 10px">
		<img src="/static/detail.png" alt="logo">
	</div>
	<h1>Receita ${recipe.title}</h1>
	<b>Problema:</b> ${recipe.problem}
	<br />
	<b>Solução:</b> ${recipe.solution}
	<br />
	<b>Autor:</b> ${recipe.author}
	<br />
	<b>Criado em:</b> ${recipe.creationTimestamp}
	<br />
	<br />
	<a href="/recipes"><input type="submit" value="Back"></a>
</body>
</html>