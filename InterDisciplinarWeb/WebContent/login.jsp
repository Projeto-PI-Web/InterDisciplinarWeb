<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
	<head>
    
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        
		<meta charset="ISO-8859-1">
		<style>
			body {font-family: Arial, Helvetica, sans-serif;}
			form {border: 3px solid #f1f1f1;}
			input[type=text], input[type=password] {
			  width: 100%;
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
			  background-color: #27496d;
			  color: white;
			  padding: 14px 20px;
			  margin: 8px 0;
			  border: none;
			  cursor: pointer;
			  width: 100%;
			}
			button:hover {
			  opacity: 0.8;
			}
			.cancelbtn {
			  width: auto;
			  padding: 10px 18px;
			  background-color: #00909e;
			}
			.cadastrobtn {
			  width: auto;
			  padding: 10px 18px;
			  background-color: #27496d;
			}
			span.psw {
			  float: right;
			  padding-top: 16px;
			}
			@media screen and (max-width: 300px) {
			  span.psw {
			    display: block;
			    float: none;
			  }
			  .cancelbtn {
			    width: 100%;
			  }
			  .cadastrobtn {
			    width: 100%;
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
			
			
			
			.img-200-200 {
			   width: 10px; // 
			}
			
			}
		</style>
		<script>
		  function validacaoEmail(field) {
			usuario = field.value.substring(0, field.value.indexOf("@"));
			dominio = field.value.substring(field.value.indexOf("@")+ 1, field.
			value.length);
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
		<title>Login</title>
	</head>
	<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:#f6f4f4">
	
		<div>
		
		<img  src="https://i.imgur.com/0RPXXl7.png" width="25%"  class="rounded mx-auto d-block" >
		</div>
		
		
		
   	 <div class="col-12 text-center my-5">
		<form action="LoginController.do" method="post" name="f1">
		  
			<label for="uname"><b class="SUBTITULO"> E-MAIL</b></label>
			<input type="text" placeholder="Insira o seu email" name="uname" onblur="validacaoEmail(f1.uname)" required>
		    <label for="psw"><b class="SUBTITULO">SENHA</b></label>
		    <input type="password" placeholder="Insira sua senha" name="psw" required>
		    <button type="submit"> <b class="SUBTITULO">Login</b></button>
		    <div id="msgemail"></div>
		</form>
		<div class="text-center">
		<c:choose>
			<c:when test="${not empty erroLogin}">
				<c:out value="${erroLogin}" />
			</c:when>
		</c:choose>
		</div>
	  </div>
	  <div class="container col-2 my-4" style="background-color:#f1f1f1">
		<button type="button" class="cadastrobtn" onclick="window.location.href = 'cadastroUser.jsp';">Cadastre-se</button>
	    <button type="reset" value="reset" class="cancelbtn" onclick="window.location.href = 'index.html';">Voltar</button> <br>
	    <span class="psw text-center col-12 "><B>Esqueceu sua <a href="resetpass.jsp"> <I class="link">senha? </I></a> </B></span>
	  </div>
	  
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
        <p style="line-height: 1.7rem" class="display-5"> <i> A MotivaStudy não é dono de nenhum dos conteúdos distribuídos e seus criadores foram citados da públicação.
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

      
          		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="ProjetoPI/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body> 
	
	
	

</html>