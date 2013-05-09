<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe ${recipe.id}</title>
</head>
<body>
	<div id="logo" style="width: 10px">
		<img src="/static/detail.png" alt="logo">
	</div>
	<h1>Receita ${recipe.titulo}</h1>
	<b>Problema:</b> ${recipe.problema}
	<br />
	<b>Solução:</b> ${recipe.solucao}
	<br />
	<b>Autor:</b> ${recipe.autor}
	<br />
	<b>Criado em:</b> ${recipe.timestamp}
	<br />
	<br />
	<a href="/recipes"><input type="submit" value="Back"></a>
</body>
</html>