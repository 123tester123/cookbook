<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>${version.title}</title>
	<link rel="stylesheet" type="text/css" href="/static/css/style.css" />
</head>
<body>
	<p style="font-family: Arial,Helvetica,sans-serif; font-weight: bold; font-size: 200%; text-align: center;"> Cookbook Manager
		<a href="/"><img src="/static/home.png" alt="homebutton" width="15" height="15"></a>
	<a href="/recipes"><img src="/static/book.png" alt="homebutton" width="15" height="15"></a>
	<a href="/recipes/search"><img src="/static/search.png" alt="homebutton" width="15" height="15"></a>
	<p style="font-family: Arial,Helvetica,sans-serif; font-weight: bold; font-size: 100%; text-align: center;"> Receita detalhada</p>
		
	<hr style="width:50%; border: 1px solid #c00; align: center" />

	<br/>
	
		<p style="text-align: center;"> <b>Title:</b> ${version.title}<br />
		<p style="text-align: center;"> <b>Problem:</b> ${version.problem}<br />
		<p style="text-align: center;"> <b>Solution:</b> ${version.solution}<br />
		<p style="text-align: center;"> <b>Author:</b> ${version.author}<br />
		<p style="text-align: center;"> <b>Tag:</b> ${version.tag}<br />
		<p style="text-align: center;"> <b>Timestamp:</b> <joda:format value="${version.creationTimestamp}" pattern="dd/MM/yyyy HH:mm:ss"/><br />
		<br />
</body>
</html>