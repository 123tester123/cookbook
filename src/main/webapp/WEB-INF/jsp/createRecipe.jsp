<body>

	<div id="logo" style="width: 10px">
		<img src="/static/criar.png" alt="logo">
	</div>
	<br />
	<form method="POST" action="/recipes">
		Titulo: <input type="text" name="titulo" /><br /> 
		Problema: <input type="text" name="problema" /><br /> 
		Solução: <input type="text" name="solucao" /><br /> 
		Autor: <input type="text" name="autor" /><br />
		<input type="submit" value="Criar nova receita" />
	</form>

</body>