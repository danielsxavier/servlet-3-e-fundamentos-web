<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<c:if test="${isLogged}">
Bem vindo ao gerenciador de empresas!
Você está logado como: ${usuarioLogado.email}
</c:if>
<c:if test="${not isLogged}">
Falha no login
</c:if>
</br>
<a href="/gerenciador">Retornar</a>
</body>
</html>