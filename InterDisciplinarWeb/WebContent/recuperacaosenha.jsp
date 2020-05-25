<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<style>
			nav a img {
					width: 200px;
					padding: 1px;
			} 
			
			.TITULO{
				color:#142850
			}
			
			.SUBTITULO{
				color:#27496d;
			}
			
			.link{
				color:#00909e
			}
			
			.responderbtn {
			  background-color: #00909e;
			  color: white;
			  padding: 14px 20px;
			  margin: 8px 0;
			  border: none;
			  cursor: pointer;
			  width: 250px;
			  
			}
			
			input[type=password]{
			  width: 200px;
			  padding: 12px 20px;
			  margin: 8px 0;
			  display: inline-block;
			  border: 1px solid #ccc;
			  box-sizing: border-box;
			  background-color:#fffff;
			  border-color: #00909e;
			  color:00909e;
			 }
			
	</style>

<title>Recuperação de Senha</title>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:#f6f4f4">
	      	<!-- MENU SUPERIOR -->
		<c:import url="Menu.jsp"/> 
             
	<div class="col-12 text-center">
		<form action="RecuperacaoSenha.do" method="post" style="${style}">
			<input type="hidden" name="id" value="${usuario.id}" />
			<input type="hidden" name="recuperacao" value="recuperacao"/>
			<input type="hidden" name="token" value="${usuario.token}"/>
			<h5 class="col-12 ml-1 mt-5 mb-5 display-4 4 SUBTITULO">ALTERE SUA SENHA</h5>
			<input type="password" align="center" name="senha"	placeholder="Informe a nova Senha"/> 
			<input type="password" align="center" name="csenha" placeholder="Confirme a senha" /> 
			<br>

			<button class="responderbtn" type="submit"> <b> Confirmar	Alteração </b> </button>
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