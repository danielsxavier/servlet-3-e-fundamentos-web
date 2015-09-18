<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
Bem vindo ao nosso gerenciador de empresas!<br/>
<c:if test="${not empty usuarioLogado}">
	Voce esta logado como: ${usuarioLogado.email}<br/>
</c:if>
<form action="executa" method="post">
	Nome: <input type="text" name="nome"><br/>
	<input type="submit" value="Enviar">
	<input type="hidden" name="tarefa" value="NovaEmpresa">
</form>

<form action="executa" method="POST">
	Email: <input type="text" name="email">
	Senha: <input type="password" name="senha">
	<input type="submit" value="Login">
	<input type="hidden" name="tarefa" value="Login">
</form>

<form action="executa" method="post">
	<input type="submit" value="Logout">
	<input type="hidden" name="tarefa" value="Logout">
</form>
</body>
</html>