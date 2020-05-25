<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recuperação de Senha</title>
</head>
<body>
	<div class="col-12">
		<form action="RecuperacaoSenha.do" method="post" style="${style}">
			<input type="hidden" name="id" value="${usuario.id}" />
			<input type="hidden" name="recuperacao" value="recuperacao"/>
			<input type="hidden" name="token" value="${usuario.token}"/>
			<h5 class="col-12 ml-1 mt-5" style="color: #27496d">Senha</h5>
			<input type="password" align="center" name="senha"	placeholder="Informe a nova Senha"/> 
			<input type="password" align="center" name="csenha" placeholder="Confirme a senha" /> 
			<br>

			<button class="alterarbtn2" type="submit">Confirmar	Alteração</button>
		</form>
	</div>
	<div>
			<c:choose>
			<c:when test="${not empty erroValida}">
				<c:out value="${erroValida}" />
			</c:when>
				<c:when test="${not empty mensagemSenha}">
				<c:out value="${mensagemSenha}" />
			</c:when>

		</c:choose>
	</div>
	
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="ProjetoPI/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
</body>
</html>