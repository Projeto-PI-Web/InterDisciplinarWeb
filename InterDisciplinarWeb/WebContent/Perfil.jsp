<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Perfil</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<style>
		body {
			position: relative;
		}

		.scrollspySite {
			position: relative;
			overflow: auto;
		}

		button {
			background-color: #27496d;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			cursor: pointer;
			width: 70px;
		}

		input[type=password] {
			width: 200px;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
			/*background-color:#fffff;
		  border-color: #00909e;
		  color:00909e;*/
		}

		input[type=text] {
			width: 300px;
			padding: 12px 20px;
			margin: 3px 0;
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
			text-align: center;
			border-color: #00909e;
		}

		.alterarbtn {
			background-color: #27496d;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			cursor: pointer;
			width: 100px;
		}

		.alterarbtn2 {
			background-color: #27496d;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			cursor: pointer;
			width: 250px;
		}

		.TITULO {
			color: #142850
		}
		
			nav a img {
					width: 200px;
					padding: 1px;
			} 
			
	</style>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color: #f6f4f4">

	      	<!-- MENU SUPERIOR -->
		<c:import url="Menu.jsp"/> 


	<div class="row">


		<div class="col-12 text-center mt-5">
			<h2 class="display-3 mt-2 TITULO">Perfil de ${usuario.nome}</h2>
			<!-- 
			<div class="col-11 text-right">
				<p style="color: #00909e">
					Altere os dados cadastrados <br> ou
				</p>
				<button>Sair</button>
			</div>
			-->


			<div class="col-12">
				<form action="UpdateUser.do" method="post">
					<input type="hidden" name="id" value="${usuario.id}"/>
					<h5 class="col-12 ml-1 mt-5" style="color: #27496d">Nome</h5>
					<input type="text" align="center" name="nome" value="${usuario.nome}" />

					<h5 class="col-12 ml-1 mt-5" style="color: #27496d">Email</h5>
					<input type="text" align="center" name="email" value="${usuario.email}" readonly="readonly"/>


					<h5 class="col-12 ml-1 mt-5" style="color: #27496d">Senha</h5>
					<input type="password" align="center" name="senha" placeholder="Informe a nova Senha" />
					<input type="password" align="center" name="csenha" placeholder="Confirme a senha" />

					<br>

					<button class="alterarbtn2" type="submit">Confirmar Alteração</button>
				</form>
			</div>


		</div>



	</div>

	</div>




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