<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>Recuperacao de Senha</title>
</head>
<body>

	<form action="ResetPass.do" method="post" name="resetform">
		<div class="container">
			<h3 style="text-align: center" class="SUBTITULO">Digite seu
				e-mail cadastrado para receber as orientações de recuperação</h3>
			<input type="text" name="email" placeholder="Email">
		</div>
		<div class="container" style="background-color: #f1f1f1">
			<button id="cadastrar" type="submit" value="Cadastrar"
				class="cadastrobtn">Enviar</button>
		</div>
	</form>
	
	<div>
		<c:choose>
			<c:when test="${not empty mensagem}">
				<c:out value="${mensagem}" />
			</c:when>
			<c:when test="${not empty erro}">
				<c:out value="${erro}" />
			</c:when>
		</c:choose>
	</div>
</body>
</html>