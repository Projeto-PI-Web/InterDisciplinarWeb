<!DOCTYPE html>
<%@page import="dao.UserDAO"%>
<%@page import="model.User"%>
<html>
	<head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        
	<meta charset="ISO-8859-1">
	<style>
		body {
		font-family: Arial, Helvetica, sans-serif;
		text-align:center;
		}
		form {border: 3px solid #f1f1f1;}
		input[type=text] {
		  width: 80%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  box-sizing: border-box;
		}
		 input[type=password]{
		  width: 40%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  box-sizing: border-box;
		 }
		.container {
		  margin-top: 6px;
		  padding: 16px;
		}
		button {
		  background-color: #3111bf;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  width: 100%;
		}
		.cadastrobtn {
	 	 width: auto;
	  	 padding: 10px 18px;
	 	 background-color: #27496d;
		}
		.cancelarbtn {
		  width: auto;
		  padding: 10px 18px;
		  background-color: #00909e;
		}
		
		.TITULO{
				color:#142850
			  }
		
	    .SUBTITULO{
				color:#27496d
			 }
		
		.link{
				color:#00909e
			}
			
						nav a img {
					width: 200px;
					padding: 1px;
			}
		
		.img-200-200 {
	   width: 200px; // a altura se adequa proporcionalmente
	}
		
		@media screen and (max-width: 300px) {
		.cadastrobtn { width: 100%; }
		.cancelarbtn { width: 100%; }
		}
	</style>
	
	<title>Cadastro</title>
	
	<script>
		function validacaoEmail(field) {
			usuario = field.value.substring(0, field.value.indexOf("@"));
			dominio = field.value.substring(field.value.indexOf("@")+ 1, field.value.length);
			if ((usuario.length >=1) &&
			    (dominio.length >=3) && 
			    (usuario.search("@")==-1) && 
			    (dominio.search("@")==-1) &&
			    (usuario.search(" ")==-1) && 
			    (dominio.search(" ")==-1) &&
			    (dominio.search(".")!=-1) &&      
			    (dominio.indexOf(".") >=1)&& 
			    (dominio.lastIndexOf(".") < dominio.length - 1)) {
				document.getElementById("msgemail").innerHTML="E-mail válido";
			}
			else{
				document.getElementById("msgemail").innerHTML="<font color='red'>E-mail inválido </font>";
			}
		}
	</script>
	</head>
	<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:#f6f4f4">
		<div class="p-4" style="background-color:#27496d">
		<img alt="Brand" src="https://i.imgur.com/0RPXXl7.png" class="img-responsive img-200-200">
		</div>
    <div class="col-12 text-center my-5">
	<form action="CadastroController.do" method="post" name=f1>
		<div class="container">
			<h3 style="text-align:center" class="SUBTITULO">CADASTRO</h3>
			<input type="text" name="name" placeholder="Nome">
			<input type="text" name="email" onblur="validacaoEmail(f1.email)" placeholder="Email">
			<input type="password" name="senha" placeholder="Senha">
			<input type="password" name="cSenha" placeholder="Confirme sua Senha">
			<div id="msgemail"></div>
		</div>
		<div class="container" style="background-color:#f1f1f1">
			<button id="cadastrar" type="submit" value="Cadastrar" class="cadastrobtn">Cadastre-se</button>
		</div>
	</form>
	<button type="button" class="cancelarbtn mb-5" onclick="window.location.href = 'index.html';">Voltar</button>
	<br class="mb-5"> 
	<br class="mb-5"> 
	<br class="mb-5"> 
	<br class="mb-5">
	<br class="mb-5">
	<br class="mb-5">
	<br class="mb-5">
	<br class="mb-5">
	<br class="mb-5">
	<br class="mb-5">
	<br class="mb-5">
	<br class="mb-5">
	<br class="mb-5">
	<br class="mb-5">
    </div>
	
	
 <!-- Footer -->
<footer class="page-footer font-small indigo" style="background-color:#cdd7d9">

  <!-- Footer Links -->
  <div class="container">

    <!-- Grid row-->
    <div class="row text-center d-flex justify-content-center pt-5 mb-3">

      <!-- Grid column -->

    </div>
    <!-- Grid row-->
    <hr class="rgba-white-light" style="margin: 0 15%;">

    <!-- Grid row-->
    <div class="row d-flex text-center justify-content-center mb-md-0 mb-4">

      <!-- Grid column -->
      <div class="col-md-8 col-12 mt-5">
        <p style="line-height: 1.7rem" class="display-5"> <i> A MotivaStudy não é dono de nenhum dos conteúdos distribuídos e seus criadores foram citados na públicação.
          Nós apenas queremos distribuir de uma forma fácil e organizada para atingir o maior número de pessoas.</i></P>
      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row-->
    <hr class="clearfix d-md-none rgba-white-light" style="margin: 10% 15% 5%;">

    <!-- Grid row-->
    <div class="row pb-3">

      <!-- Grid column -->
      <div class="col-md-12">

  

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row-->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3 SUBTITULO"> <b> © 2020 Copyright: SKYNET </b>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
	</body>
</html>