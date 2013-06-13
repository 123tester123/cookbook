<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe ${recipe.externalId}</title>
</head>
<body>
	<div id="logo" style="width: 10px">
		<img src="/static/detail.png" alt="logo">
	</div>
	
		<p> Title: ${version.title}<br />
		<p> Problem: ${version.problem}<br />
		<p> Solution: ${version.solution}<br />
		<p> Author: ${version.author}<br />
		<p> Tag: ${version.tag}<br />
		<p> Timestamp: ${version.creationTimestamp}<br />
		<br />
</body>
</html>