<form method="POST" action="/recipes/${recipe.externalId}">
	Titulo: <input type="text" name="title" /><br /> 
	Problema: <input type="text" name="problem" /><br /> 
	Solução: <input type="text" name="solution" /><br /> 
	Autor: <input type="text" name="author" /><br />
	Tag: <input type="text" name="tag" /><br />
	<input type="submit" value="Editar" />
</form>