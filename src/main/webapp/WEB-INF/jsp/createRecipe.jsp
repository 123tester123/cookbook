<head>
<title>Create Recipe</title>
</head>
<body>
	<div id="logo" style="width: 10px">
		<img src="/static/criar.png" alt="logo">
	</div>
	<br />
	<form method="POST" action="/recipes">
		Titulo: <input type="text" name="title" /><br /> 
		Problema: <input type="text" name="problem" /><br /> 
		Solução: <input type="text" name="solution" /><br /> 
		Autor: <input type="text" name="author" /><br />
		Tag: <input type="text" name="tag" /><br />
		<input type="submit" value="Criar nova receita" />
	</form>
</body>