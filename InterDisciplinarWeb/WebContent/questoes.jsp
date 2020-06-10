<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Quest�es</title>
		<!-- lib do bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<!-- lib do bootstrap -->
		<style>
			body {
				position: relative;
				height:100%;
			}
			
			.scrollspySite{
				position: relative;
				overflow:auto;
			}
			
			
		   input[type=password]{
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
			  text-align:center;
			  border-color: #00909e;
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
			
			.TITULO{
				color:#142850
			}
			
			.SUBTITULO{
				color:#27496d;
			}
			
			.link{
				color:#00909e
			}
			
			
			nav a img {
					width: 200px;
					padding: 1px;
			}
			
		</style>
		<script>
		function callServlet(topico){
			location.href = 'ViewQuestion.do?topico=' + topico;
			console.log(topico);
		}
		</script>
	</head>
    
	<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:#f6f4f4">
    
    	
	<c:import url="Menu.jsp"/>  
	<!-- Menu Superior -->
	
	    
    	<div class="row">
		<!-- t�tulos-->
    	
    		<div class="col-12 text-center mt-5">
                <img src="https://i.imgur.com/81ZLXfX.png" class="img-fluid" alt="Responsive image">
                <br>
                <img src="https://i.imgur.com/LeWVLck.png" class="img-fluid" alt="Responsive image"> 
        
 			</div>
        <!-- cabo t�tulos-->    
           
   		 </div>
         
         <!-- MENU DE MAT�RIAS --> 
         <div class="container"> 
         
         	<ul class="nav justify-content-center nav-tabs navbar-light" style="background-color:#f0f0f0">
             
                  <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"   href=""><b> Hist�ria</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab1-1" onclick="callServlet('histgeral')"><b> 1 - Hist�ria Geral</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab1-2"><b> 2 - Hist�ria do Brasil</b> </a>
                    </div>
                </li> 
                
                <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""><b> Geografia</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link " data-toggle="tab" href="#tab2-1" onclick="callServlet('agriculturaambiente')"><b>1 - Agricultura e meio ambiente</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab2-2"> <b>2 - Popula��o e migra��es</b>  </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab2-3"> <b>3 - Urbaniza��o </b>  </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab2-4"> <b>4 - Globaliza��o e Ind�stria </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab2-5"> <b>5 - Geografia f�sica </b> </a>
                    </div>
                </li> 
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""><b> Gram�tica</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab3-1"> <b>1 - Ortografia</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab3-2"><b>2 - Morfologia</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab3-3"> <b>3 - Sintaxe</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab3-4"><b> 4 - Classes gramaticais</b> </a>
                    </div>
                </li> 
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""><b>Literatura</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab4-1"> <b>1 - Interpreta��o </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab4-2"> <b>2 - Escolas Liter�rias  </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab4-3"> <b>3 - Vanguardas Europeias </b></a>
                    </div>
                </li> 
                
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""> <b>Matem�tica 1</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab5-1" onclick="callServlet('matbas')"> <b>1 - Matem�tica B�sica </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-2"> <b>2 - Equa��o de 1� Grau e 2� Grau </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-3"> <b>3 - Porcentagem e Juros</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-4"> <b>4 - Matem�tica - PA </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-5"> <b>5 - Matem�tica - PG</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-6"> <b>6 - Inequa��o de 1� e 2� Grau </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-7"> <b>7 - Conjuntos Num�ricos </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-8"> <b>8 - An�lise Combinat�ria </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-9"> <b>9 - Probabilidade e Estat�stica </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-10"> <b>10 - An�lise de Gr�ficos e Tabelas</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-11"> <b>11 - Matrizes e Sistemas Lineares</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-12"> <b>12 - Logaritimo </b></a>
                    </div>
                </li> 
                
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""> <b>Matem�tica 2</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab6-1"> <b>1 - Geometria Plana </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab6-2"> <b>2 - Geometria Espacial </b>  </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab6-3"> <b>3 - Trignometria</b> </a>
                    </div>
                </li> 
                
             
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown" href="" > <b>F�sica</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab7-1"> <b>1 - No��es B�sicas Vetores  </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-2"> <b>2 - Cinem�tica </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-3"> <b>3 - Din�mica</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-4"> <b>4 - Est�tica </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-5"> <b>5 - Energia </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-6"> <b>6 - Termologia </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-7"> <b>7 - Hidrost�tica </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-8"> <b>8 - Eletroest�tica </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-9"><b> 9 - Eletrodin�mica </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-10"><b> 10 - Eletromagnetismo</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-11"> <b>11 - Ondulat�ria</b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-12"> <b>12 - �ptica </b></a>
                    </div>
                </li>
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""> <b>Qu�mica</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab8-1"> <b>1 - Qu�mica B�sica </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-2"> <b>2 - Propriedades da mat�ria </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-3"> <b>3 - Liga��es Qu�micas </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-4"> <b>4 - Solu��es </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-5"> <b>5 - Estequiometria e Rea��es Qu�micas</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-6"> <b>6 - Fun��es Inorg�nicas</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-7"> <b>7 - Termoqu�mica </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-8"> <b>8 - Cin�tica e Equil�brio Qu�mico </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-9"> <b>9 - Eletroqu�mica e Radiotividade</b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-10"> <b>10 - F�sicoqu�mica</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-11"> <b>11 - Qu�mica Org�nica</b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-12"> <b>12 - Isomeria</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-13"> <b>13 - Rea��es Org�nicas</b> </a>
                    </div>
                </li> 
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""> <b>Biologia</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab9-1"> <b>1 - Ecologia  </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-2"> <b>2 - Origem da Vida e Evolu��o</b>   </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-3"> <b>3 - Bioqu�mica</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-4"> <b>4 - Citologia  </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-5"> <b>5 - Histologia </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-6"> <b>6 - Gen�tica</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-7"> <b>7 - Taxonomia  </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-8"> <b>8 - Reino Animal</b>  </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-9"><b> 9 - Fisiologia Humana </b> </a>
                    </div>
                </li> 
                
                 <li class="nav-item"> <a class="nav-link SUBTITULO" data-toggle="tab"  href="#tab10"><b> Filosofia</b></a></li>
                 <li class="nav-item"> <a class="nav-link SUBTITULO" data-toggle="tab"  href="#tab11"><b> Sociologia</b></a></li>
                 
            </ul>
             <!-- MENU DE MAT�RIAS CABO
             
             o meni chama essas divs de vc ver cada um tem um ID que chama do menu para as divs 
            -->
            <div class="tab-content">
            	<!-- DIV DA HISTORIA GERAL -->
				
            	<div id="tab1-1" class="container show active tab-pane mt-4"> 
            	<c:choose >
            		<c:when test="${not empty erroQuestaohistgeral}">
					<c:out value="${erroQuestaohistgeral}" />
				</c:when>
            	</c:choose>
                <p class="col-2 link"> <b> ENEM 1� Dia 2019 </b> </p>
                <c:forEach var="questao" items="${questao}" varStatus="loop">
                <p>Quest�o #${questao.id}</p>
                <br>
                <p> ${questao.texto_apoio} <p>
				
                
                <p> ${questao.enunciado}</p>
               		<form action="ValidaQuestao.do" method="post">
               		<input type="hidden" name="id" value="${questao.id}">
                    <fieldset id="grupo1">
                    <div class="form-check form-check-inline">
					
                      <input class="form-check-input " type="radio" name="inlineRadioOptions1" id="inlineRadio1" value="A">
                      <label class="form-check-label " for="inlineRadio1"> <b class="link"> A)</b> ${questao.alternativaA} </label>
                    
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio2" value="B">
                      <label class="form-check-label " for="inlineRadio2"><b class="link"> B</b>) ${questao.alternativaB}</label>
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio3" value="C">
                      <label class="form-check-label " for="inlineRadio3"><b class="link"> C)</b> ${questao.alternativaC}</label>
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio4" value="D">
                      <label class="form-check-label" for="inlineRadio4"><b class="link"> D)</b> ${questao.alternativaD}</label>
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio5" value="E">
                      <label class="form-check-label" for="inlineRadio5"><b class="link"> E)</b> ${questao.alternativaD}</label>
                    </div>
                    </fieldset>
                    <div>
                    <c:set var="resp" value="resposta${questao.id}"/>
                    <c:out value="${sessionScope[resp]}"></c:out>
                    </div>
                    <button type="submit" class="responderbtn mt-3"> RESPONDER </button>
                    </form>
                    <br>
                    <hr>
                    </c:forEach>
                    

                </div>
				
                <!-- DIV DA HISTORIA DO BRASIL -->
         	     <div id="tab1-2" class="container tab-pane mt-4">
                <p>2</p>
                </div>
                
     <!-- DIV DA GEO -->
                 <!-- DIV DA Agricultura e meio ambiente -->
                 <div id="tab2-1" class="container tab-pane mt-4 "> 
                <p> Agricultura e meio ambiente</p>
                                <c:choose >
            		<c:when test="${not empty erroQuestaomatbas}">
					<c:out value="${erroQuestaomatbas}" />
				</c:when>
            	</c:choose>
                <p class="col-2 link"> <b> ENEM 1� Dia 2019 </b> </p>
                <c:forEach var="agricultura" items="${questao}">
                <p>Quest�o #${agricultura.id}</p>
                <br>
                <p> ${agricultura.texto_apoio} <p>
				
                
                <p> ${agricultura.enunciado}</p>
               		<form>
                    <fieldset id="grupo1">
                    <div class="form-check form-check-inline">

                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio1" value="option1">
                      <label class="form-check-label" for="inlineRadio1"> <b class="link"> A)</b> ${agricultura.alternativaA} </label>
                    
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio2" value="option2">
                      <label class="form-check-label" for="inlineRadio2"><b class="link"> B</b>) ${agricultura.alternativaB}</label>
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio3" value="option3">
                      <label class="form-check-label" for="inlineRadio3"><b class="link"> C)</b> ${agricultura.alternativaC}</label>
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio4" value="option4">
                      <label class="form-check-label" for="inlineRadio4"><b class="link"> D)</b> ${agricultura.alternativaD}</label>
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio5" value="option5">
                      <label class="form-check-label" for="inlineRadio5"><b class="link"> E)</b> ${agricultura.alternativaD}</label>
                    </div>
                    </fieldset>
                    <div>
                    <c:set var="resp" value="resposta${agricultura.id}"/>
                    <c:out value="${sessionScope[resp]}"></c:out>
                    </div>
                    </form>
                    <br>
                    <hr>
                    </c:forEach>
                    <button class="responderbtn mt-3"> RESPONDER </button>
                </div>
                 <!-- DIV DA Popula��o e migra��es  -->
                 <div id="tab2-2" class="container tab-pane mt-4 ">
                <p> Popula��o e migra��es </p>
                </div>
                <!-- DIV DA Urbaniza��o  -->
                 <div id="tab2-3" class="container tab-pane mt-4 ">
                <p> Urbaniza��o </p>
                </div>
                <!-- DIV DA  Globaliza��o e Ind�stria -->
                 <div id="tab2-4" class="container tab-pane mt-4 ">
                <p>  Globaliza��o e Ind�stria </p>
                </div>
                <!-- DIV DA  Geografia f�sica  -->
                <div id="tab2-5"class="container tab-pane mt-4 ">
                <p>  Geografia f�sica </p>
                </div>
                
                
    <!-- DIV DE GRAMATICA  -->
                 <!-- DIV DA Ortografia -->
                 <div id="tab3-1" class="container tab-pane mt-4 ">
                <p> Ortografia</p>
                </div>
                 <!-- DIV DA Morfologia -->
                 <div id="tab3-2" class="container tab-pane mt-4 ">
                <p> Morfologia </p>
                </div>
                <!-- DIV DA Sintaxe  -->
                 <div id="tab3-3" class="container tab-pane mt-4 ">
                <p> Sintaxe </p>
                </div>
                <!-- DIV DA Classes gramaticais -->
                 <div id="tab3-4"class="container tab-pane mt-4 ">
                <p>  Classes gramaticais </p>
                </div>
                
                
  <!-- DIV DE LITERATURA  -->
                 <!-- DIV DA Interpreta��o -->
                 <div id="tab4-1" class="container tab-pane mt-4 ">
                <p> Interpreta��o</p>
                </div>
                 <!-- DIV DA Escolas Liter�rias   -->
                 <div id="tab4-2" class="container tab-pane mt-4 ">
                <p> Escolas Liter�rias   </p>
                </div>
                <!-- DIV DA Vanguardas Europeias  -->
                 <div id="tab4-3" class="container tab-pane mt-4 ">
                <p> Vanguardas Europeias </p>
                </div>
                
                
                
 <!-- DIV DA MATEMATICA 1 -->
                 <!-- DIV DA Matem�tica B�sica -->
                 <div id="tab5-1" class="container tab-pane mt-4 ">
                <c:choose >
            		<c:when test="${not empty erroQuestaoagriculturaambiente}">
					<c:out value="${erroQuestaoagriculturaambiente}" />
				</c:when>
            	</c:choose>
                <p class="col-2 link"> <b> ENEM 1� Dia 2019 </b> </p>
                <c:forEach var="mat" items="${questao}">
                <p>Quest�o #${mat.id}</p>
                <br>
                <p> ${mat.texto_apoio} <p>
				
                
                <p> ${mat.enunciado}</p>
               		<form>
                    <fieldset id="grupo1">
                    <div class="form-check form-check-inline">

                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio1" value="option1">
                      <label class="form-check-label" for="inlineRadio1"> <b class="link"> A)</b> ${mat.alternativaA} </label>
                    
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio2" value="option2">
                      <label class="form-check-label" for="inlineRadio2"><b class="link"> B</b>) ${mat.alternativaB}</label>
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio3" value="option3">
                      <label class="form-check-label" for="inlineRadio3"><b class="link"> C)</b> ${mat.alternativaC}</label>
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio4" value="option4">
                      <label class="form-check-label" for="inlineRadio4"><b class="link"> D)</b> ${mat.alternativaD}</label>
                    </div>
                    <br>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio5" value="option5">
                      <label class="form-check-label" for="inlineRadio5"><b class="link"> E)</b> ${mat.alternativaD}</label>
                    </div>
                    </fieldset>
                    <div>
                    <c:set var="resp" value="resposta${mat.id}"/>
                    <c:out value="${sessionScope[resp]}"></c:out>
                    </div>
                    </form>
                    <br>
                    <hr>
                    </c:forEach>
                    <button class="responderbtn mt-3"> RESPONDER </button>
                </div>
                 <!-- DIV DA Equa��o de 1� Grau e 2� Grau  -->
                 <div id="tab5-2" class="container tab-pane mt-4 ">
                <p> Equa��o de 1� Grau e 2� Grau </p>
                </div>
                <!-- DIV DA Porcentagem e Juros  -->
                 <div id="tab5-3" class="container tab-pane mt-4 ">
                <p> Porcentagem e Juros </p>
                </div>
                <!-- DIV DA  Matem�tica - PA -->
                 <div id="tab5-4" class="container tab-pane mt-4 ">
                <p>  Matem�tica - PA  </p>
                </div>
                <!-- DIV DA Matem�tica - PG -->
                <div id="tab5-5" class="container tab-pane mt-4 ">
                <p>  Matem�tica - PG </p>
                </div>
                 <!-- DIV DA Inequa��o de 1� e 2� Grau -->
                 <div id="tab5-6" class="container tab-pane mt-4 ">
                <p> Inequa��o de 1� e 2� Grau</p>
                </div>
                 <!-- DIV DA Conjuntos Num�ricos  -->
                 <div id="tab5-27"class="container tab-pane mt-4 ">
                <p> Conjuntos Num�ricos </p>
                </div>
                <!-- DIV DA Conjuntos Num�ricos -->
                 <div id="tab5-8" class="container tab-pane mt-4 ">
                <p> Conjuntos Num�ricos </p>
                </div>
                <!-- DIV DA  Conjuntos Num�ricos -->
                 <div id="tab5-9"class="container tab-pane mt-4 "> 
                <p> Conjuntos Num�ricos  </p>
                </div>
                <!-- Conjuntos Num�ricos -->
                <div id="tab5-10" class="container tab-pane mt-4 "> 
                <p>  Conjuntos Num�ricos </p>
                </div>
                <!--Matrizes e Sistemas Lineares -->
                <div id="tab5-11" class="container tab-pane mt-4 ">
                <p>  Matrizes e Sistemas Lineares </p>
                </div>
                
                <!--Logaritimo -->
                <div id="tab5-12" class="container tab-pane mt-4 "> 
                <p>  Logaritimo </p>
                </div>  

   <!-- DIV DE MATEMATICA 2  -->
                 <!-- Geometria Plana -->
                 <div id="tab6-1" class="container tab-pane mt-4 "> 
                <p>Geometria Plana</p>
                </div>
                 <!--Geometria Espacial  -->
                 <div id="tab6-2" class="container tab-pane mt-4 ">
                <p> Geometria Espacial   </p>
                </div>
                <!-- Trignometria  -->
                 <div id="tab6-3" class="container tab-pane mt-4 ">
                <p> Trignometria </p>
                </div>

<!-- DIV DA FISICA -->
                 <!-- No��es B�sicas Vetores-->
                 <div id="tab7-1" class="container tab-pane mt-4 ">
                <p> No��es B�sicas Vetores</p>
                </div>
                 <!-- Cinem�tica  -->
                 <div id="tab7-2" class="container tab-pane mt-4 ">
                <p> Cinem�tica</p>
                </div>
                <!-- Din�mica  -->
                 <div id="tab7-3" class="container tab-pane mt-4 ">
                <p> Porcentagem e Juros </p>
                </div>
                <!-- Est�tica -->
                 <div id="tab7-4" class="container tab-pane mt-4 ">
                <p>  Est�tica  </p>
                </div>
                <!-- Energia-->
                <div id="tab7-5" class="container tab-pane mt-4 ">
                <p>  Energia </p>
                </div>
                 <!-- Termologia -->
                 <div id="tab7-6" class="container tab-pane mt-4 ">
                <p> Termologia</p>
                </div>
                 <!-- Hidrost�tica  -->
                 <div id="tab7-7" class="container tab-pane mt-4 ">
                <p> Hidrost�tica </p>
                </div>
                <!-- Eletroest�tica -->
                 <div id="tab7-8" class="container tab-pane mt-4 ">
                <p> Eletroest�tica</p>
                </div>
                <!--  Eletrodin�mica -->
                 <div id="tab7-9" class="container tab-pane mt-4 ">
                <p>  Eletrodin�mica  </p>
                </div>
                <!-- Eletromagnetismo -->
                <div id="tab7-10" class="container tab-pane mt-4 ">
                <p>  CEletromagnetismo </p>
                </div>
                <!--Ondulat�ria -->
                <div id="tab7-11" class="container tab-pane mt-4 ">
                <p>  Ondulat�ria </p>
                </div>
                
                <!--�ptica -->
                <div id="tab7-12" class="container tab-pane mt-4 ">
                <p>  �ptica </p>
                </div>   
                
                
<!-- DIV DA QUIMICA -->
                 <!-- Quimica basica-->
                 <div id="tab8-1" class="container tab-pane mt-4 ">
                <p> Quimica basica</p>
                </div>
                 <!-- Propriedades da mat�ria  -->
                 <div id="tab8-2" class="container tab-pane mt-4 ">
                <p> Propriedades da mat�ria</p>
                </div>
                <!-- Liga��es Quimicas  -->
                 <div id="tab8-3"class="container tab-pane mt-4 ">
                <p> Liga��es Quimicas </p>
                </div>
                <!-- Solu��es -->
                 <div id="tab8-4" class="container tab-pane mt-4 ">
                <p>  Solu��es  </p>
                </div>
                <!-- Estequiometria e Rea��es Quimicas-->
                <div id="tab8-5" class="container tab-pane mt-4 ">
                <p>  Estequiometria e Rea��es Quimicas </p>
                </div>
                 <!-- Fun��es Inorg�nicas -->
                 <div id="tab8-6" class="container tab-pane mt-4 ">
                <p> Fun��es Inorg�nicas</p>
                </div>
                 <!-- Termoqu�mica  -->
                 <div id="tab8-7" class="container tab-pane mt-4 ">
                <p> Termoqu�mica </p>
                </div>
                <!-- Cin�tica e Equil�brio Qu�mico -->
                 <div id="tab8-8" class="container tab-pane mt-4 ">
                <p> Cin�tica e Equil�brio Qu�mico</p>
                </div>
                <!--  Eletroqu�mica e Radiotividade -->
                 <div id="tab8-9" class="container tab-pane mt-4 ">
                <p>  Eletroqu�mica e Radiotividade  </p>
                </div>
                <!-- F�sicoqu�mica -->
                <div id="tab8-10" class="container tab-pane mt-4 ">
                <p>  F�sicoqu�mica </p>
                </div>
                <!--Qu�mica Organica -->
                <div id="tab8-11" class="container tab-pane mt-4 ">
                <p>  Qu�mica Organica </p>
                </div>
                
                <!--Isomeria -->
                <div id="tab8-12" class="container tab-pane mt-4 ">
                <p>  Isomeria </p>
                </div> 
                
               <!--Rea��es Org�nicas -->
                <div id="tab8-13"class="container tab-pane mt-4 ">
                <p>  Rea��es Org�nicas </p>
                </div> 
                
                
<!-- DIV DA BIOLOGIA -->
                 <!-- Ecologia -->
                 <div id="tab9-1" class="container tab-pane mt-4 ">
                <p> Ecologia </p>
                </div>
                 <!-- Origem da Vida e Evolu��o   -->
                 <div id="tab9-2" class="container tab-pane mt-4 ">
                <p> Origem da Vida e Evolu��o </p>
                </div>
                <!-- Bioqu�mica  -->
                 <div id="tab9-3" class="container tab-pane mt-4 ">
                <p> Bioqu�mica  </p>
                </div>
                <!-- Citologia -->
                 <div id="tab9-4" class="container tab-pane mt-4 ">
                <p>  Citologia   </p>
                </div>
                <!-- Histologia -->
                <div id="tab9-5" class="container tab-pane mt-4 ">
                <p>  Histologia  </p>
                </div>
                 <!-- Gen�tica -->
                 <div id="tab9-6" class="container tab-pane mt-4 "> 
                <p>Gen�tica</p>
                </div>
                 <!-- Taxonomia  -->
                 <div id="tab9-7" class="container tab-pane mt-4 ">
                <p> Taxonomia  </p>
                </div>
                <!-- Reino Animal  -->
                 <div id="tab9-8" class="container tab-pane mt-4 ">
                <p> Reino Animal </p>
                </div>
                <!-- Fisiologia Humana  -->
                 <div id="tab9-9"class="container tab-pane mt-4 ">
                <p>  Eletroqu�mica e Radiotividade  </p>
                </div>
                
 <!-- DIV DA FILOSOFIA -->
                 <div id="tab10" class="container tab-pane mt-4 ">
                <p> FILOSOFIA </p>
                </div>
                
 <!-- DIV DA SOCIOLOGIA -->
                 <div id="tab11" class="container tab-pane mt-4 ">
                <p> SOCIOLOGIA </p>
                </div>

                
                

         </div>
         
         
<c:import url="rodape.jsp"/>       





		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="ProjetoPI/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
