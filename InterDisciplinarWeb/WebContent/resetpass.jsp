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
			
		input[type=text] {
		  
		  width: 300px;
		  padding: 12px 20px;
		  margin: 3px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  box-sizing: border-box;
		  text-align:center;
		  border-color: #00909e;
		}
			
	</style>
<title>Recuperação de Senha</title>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:#f6f4f4">
	<!-- MENU SUPERIOR -->
	<c:import url="Menu.jsp"/> 

	<form action="ResetPass.do" method="post" name="resetform" style="${style}">
		<div class="container col-12 text-center"">
			<h1 class="display-4 SUBTITULO mb-4 mt-4"> 	RECUPERAÇÃO DE E-MAIL </b> </h1>
			<h5 class="SUBTITULO mt-4 SUBTITULO">Digite seu e-mail cadastrado para receber as orientações de recuperação</h5>
			<input class=" col-12 mt-4 mb-3" type="text" name="email" placeholder="Email">
		</div>
		<div class="container col-12 text-center" style="background-color: :#f6f4f4">
			<button id="cadastrar" type="submit" value="Cadastrar"
				class="responderbtn"> <b> Enviar </b></form>
	
	<div>
		<c:choose>
			<c:when test="${not empty mensagem}">
				<c:out value="${mensagem}" />
			</c:when>
			<c:when test="${not empty erro}">
				<c:out value="${erro}" />
			</c:when>
			<c:when test="${not empty tokenInvalido }">
				<c:out value="${tokenInvalido}"/>
			</c:when>
		</c:choose>
	</div>
</body>
</html>