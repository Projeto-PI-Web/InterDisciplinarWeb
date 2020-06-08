<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Cursos</title>
		
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
		<style>
		body {
			position: relative;
		}
		
		.scrollspySite{
			position: relative;
			overflow:auto;
		}
		.video{
		
			margin-left:300px;
			margin-top:300px;
			position:absolute;
		}
		    .TITULO{
				color:#142850
			}
			
			.SUBTITULO{
				color:#27496d;
			}
			
			.link{
				color:#00909e;
			}
			
			nav a img {
					width: 200px;
					padding: 1px;
			}
			
			.nav-pills>li.active>a {
			background-color:#f0f0f0;
			color:#00909e;
			}
			
			.nav-pills>li.active>a:hover{
				background-color:#27496d;
				color:#f6f4f4;
			}
			
			.nav-pills>li.active>a:focus{
								background-color:#27496d;
				color:#f6f4f4;
			}
				


		
		</style>
	</head>
    
	<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:#f6f4f4">
          
              	<!-- MENU SUPERIOR -->
		<c:import url="Menu.jsp"/> 
        
    		<div class="text-center my-5">
    			
                 <img src="https://i.imgur.com/p47tHs3.png" class="img-fluid" alt="Responsive image">
                <p> Para um excelente efeito no Enem você deve ter acesso aos conteúdos que melhor vão te adequar a prova. <br>
                 Por conta disso, separamos as aulas que já estão disponíveis no Youtube gratuitamente e separamos os tópicos mais cobrados. </p>
                <p class="SUBTITULO"> <b> <i> Se você não souber por onde começar a estudar  <a href="dicas.jsp"> <b class="link">clique aqui</b> </a>. </b> </i></p>
   			 </div>
             
         <!-- MENU DE MATÉRIAS --> 
         <div> 
         
         	<ul class="nav justify-content-center nav-tabs navbar-light" style="background-color:#f0f0f0">
             
                  <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"   href=""><b> História</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link active SUBTITULO" data-toggle="tab" href="#tab1-1"><b> 1 - História Geral</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab1-2"><b> 2 - História do Brasil</b> </a>
                    </div>
                </li> 
                
                <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""><b> Geografia</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link " data-toggle="tab" href="#tab2-1"> <b>1 - Agricultura e meio ambiente</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab2-2"> <b>2 - População e migrações</b>  </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab2-3"> <b>3 - Urbanização </b>  </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab2-4"> <b>4 - Globalização e Indústria </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab2-5"> <b>5 - Geografia física </b> </a>
                    </div>
                </li> 
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""><b> Gramática</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab3-1"> <b>1 - Ortografia</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab3-2"><b>2 - Morfologia</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab3-3"> <b>3 - Sintaxe</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab3-4"><b> 4 - Classes gramaticais</b> </a>
                    </div>
                </li> 
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""><b>Literatura</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab4-1"> <b>1 - Interpretação </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab4-2"> <b>2 - Escolas Literárias  </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab4-3"> <b>3 - Vanguardas Europeias </b></a>
                    </div>
                </li> 
                
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""> <b>Matemática 1</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab5-1"> <b>1 - Matemática Básica </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-2"> <b>2 - Equação de 1° Grau e 2° Grau </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-3"> <b>3 - Porcentagem e Juros</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-4"> <b>4 - Matemática - PA </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-5"> <b>5 - Matemática - PG</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-6"> <b>6 - Inequação de 1° e 2° Grau </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-7"> <b>7 - Conjuntos Numéricos </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-8"> <b>8 - Análise Combinatória </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-9"> <b>9 - Probabilidade e Estatística </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-10"> <b>10 - Análise de Gráficos e Tabelas</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-11"> <b>11 - Matrizes e Sistemas Lineares</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab5-12"> <b>12 - Logaritimo </b></a>
                    </div>
                </li> 
                
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""> <b>Matemática 2</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab6-1"> <b>1 - Geometria Plana </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab6-2"> <b>2 - Geometria Espacial </b>  </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab6-3"> <b>3 - Trignometria</b> </a>
                    </div>
                </li> 
                
             
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown" href="" > <b>Física</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab7-1"> <b>1 - Noções Básicas Vetores  </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-2"> <b>2 - Cinemática </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-3"> <b>3 - Dinâmica</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-4"> <b>4 - Estática </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-5"> <b>5 - Energia </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-6"> <b>6 - Termologia </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-7"> <b>7 - Hidrostática </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-8"> <b>8 - Eletroestática </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-9"><b> 9 - Eletrodinâmica </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-10"><b> 10 - Eletromagnetismo</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-11"> <b>11 - Ondulatória</b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab7-12"> <b>12 - Óptica </b></a>
                    </div>
                </li>
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""> <b>Química</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab8-1"> <b>1 - Química Básica </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-2"> <b>2 - Propriedades da matéria </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-3"> <b>3 - Ligações Químicas </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-4"> <b>4 - Soluções </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-5"> <b>5 - Estequiometria e Reações Químicas</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-6"> <b>6 - Funções Inorgânicas</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-7"> <b>7 - Termoquímica </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-8"> <b>8 - Cinética e Equilíbrio Químico </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-9"> <b>9 - Eletroquímica e Radiotividade</b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-10"> <b>10 - Físicoquímica</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-11"> <b>11 - Química Orgânica</b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-12"> <b>12 - Isomeria</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab8-13"> <b>13 - Reações Orgânicas</b> </a>
                    </div>
                </li> 
                
                 <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle SUBTITULO" data-toggle="dropdown"  href=""> <b>Biologia</b></a>
                	<div class="dropdown-menu">
                    	<a class="dropdown-item link" data-toggle="tab" href="#tab9-1"> <b>1 - Ecologia  </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-2"> <b>2 - Origem da Vida e Evolução</b>   </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-3"> <b>3 - Bioquímica</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-4"> <b>4 - Citologia  </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-5"> <b>5 - Histologia </b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-6"> <b>6 - Genética</b> </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-7"> <b>7 - Taxonomia  </b></a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-8"> <b>8 - Reino Animal</b>  </a>
                        <a class="dropdown-item link" data-toggle="tab" href="#tab9-9"><b> 9 - Fisiologia Humana </b> </a>
                    </div>
                </li> 
                
                 <li class="nav-item"> <a class="nav-link SUBTITULO" data-toggle="tab"  href="#tab10"><b> Filosofia</b></a></li>
                 <li class="nav-item"> <a class="nav-link SUBTITULO" data-toggle="tab"  href="#tab11"><b> Sociologia</b></a></li>
                 
            </ul>
             <!-- MENU DE MATÉRIAS CABO
             
             o meni chama essas divs de vc ver cada um tem um ID que chama do menu para as divs 
            -->

            <div class=" tab-content " >
    <!-- DIV DA HISTORIA -->
            	<!-- DIV DA HISTORIA GERAL -->
                
            	<div id="tab1-1" class="show active tab-pane  my-5 container-fluid">
            
                     <ul class="nav nav-pills nav-stacked col-2 ml-4 nav-justified" style="float:left"> 
                        <li class="nav-item" >
                            <a  class= "nav-link active link" data-toggle="pill" href="#item1"> Egito Antigo </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item2"> Grécia Antiga </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item3"> Idade Média </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item4"> Renascimento </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item5"> Reformas Religiosas </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item6"> Iluminismo e Liberalismo </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item7"> Despotismo Esclarecido </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item8"> Revolução Industrial </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item9"> Revolução Francesa </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item10"> Era Napoleônica </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item11"> Imperialismo </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item12"> Primeira Guerra Mundial </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item13"> Tratado de Versalhes </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item14"> Revolução Russa </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item15"> Crise de 1929 </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item16"> Facismo, Nazismo e Franquismo </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item17"> Alemanha Nazista </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item18"> Guerra Civil Espanhola </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item19"> Segunda Guerra Mundial </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#item20"> Guerra Fria </a>

                        </li>
                     </ul>

                     
                     
                     <div class="tab-content col-md-9"  style="float:left">
                     
                    	<div id="item1" class="show active tab-pane embed-responsive embed-responsive-16by9">
                       
                    		<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/97VEoR3Eg68" > </iframe>
               		   </div>
                       
                       
               		   <div id="item2" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/bpArabQHqA4"> </iframe>
                   	   </div>
                       
                       
               		   <div id="item3"class="tab-pane embed-responsive embed-responsive-16by9">
                   			<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/CTIs_RSPr84"> </iframe>
                   	   </div>
                       
               		   <div id="item4" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/QnjkthNjWu0"> </iframe>
                   	   </div>
                       
                       
               		   <div id="item5" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/n-gxIqg5xwI"> </iframe>
                   	   </div>  
                       
               		   <div id="item6" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Bet_3rJxwwY"> </iframe>
                   	   </div> 
                       
               		   <div id="item7" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Ro42Qm0EleY"> </iframe>
                   	   </div> 
                       
               		   <div id="item8" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/eDDGqU9OgAcI"> </iframe>
                   	   </div> 
                       
               		   <div id="item9" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/bb6d54mQkL0"> </iframe>
                   	   </div>  
                       
               		   <div id="item10" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/ta2npneckTE"> </iframe>
                   	   </div> 
                       
               		   <div id="item11" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/2F1bkjrJils"> </iframe>
                   	   </div> 
                       
               		   <div id="item12" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/kCKuP2OqfEs"> </iframe>
                   	   </div> 
                       
               		   <div id="item13" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/T-sajvY_F4Y"> </iframe>
                   	   </div> 
                       
               		   <div id="item14" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/OJTeR5vjq4Q"> </iframe>
                   	   </div> 
                       
               		   <div id="item15" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/pvGnHp9mFrU"> </iframe>
                   	   </div> 
                       
               		   <div id="item16" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Dx6quavMty0"> </iframe>
                   	   </div> 
                       
               		   <div id="item17" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/jaBNm6MW8BA"> </iframe>
                   	   </div> 
                       
               		   <div id="item18" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/AJt5iUocGH0"> </iframe>
                   	   </div> 
                       
               		   <div id="item19" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/4hEDjSdszSU"> </iframe>
                   	   </div> 
                       
               		   <div id="item20" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/x6T_AsE8Rts"> </iframe>
                   	   </div> 
                       
                    </div>
                  </div>

                <!-- DIV DA HISTORIA DO BRASIL -->
         	     <div id="tab1-2" class="container tab-pane mt-4">
                           História do Brasil
                </div>
                
     <!-- DIV DA GEO -->
                 <!-- DIV DA Agricultura e meio ambiente -->
                 <div id="tab2-1" class="container-fluid tab-pane mt-4  "> 
                     <ul class="nav nav-pills nav-stacked col-2 ml-4 nav-justified" style="float:left"> 
                        <li class="nav-item" >
                            <a  class= "nav-link active link" data-toggle="pill" href="#id1"> Sistemas agrícolas </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#id2"> Impactos Ambientais Globais </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#id3"> Conflitos Agrários I </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#id4"> Conflitos Agrários II </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#id5"> Conflitos Agrários III </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#id6"> Problemas Urbanos Sociais e Ambientais </a>
                     </ul>

                     <div class="tab-content col-md-9"  style="float:left">
                    	<div id="id1" class="show active tab-pane embed-responsive embed-responsive-16by9">
                    		<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/DAKuO_CbPYo" > </iframe>
               		   </div>

               		   <div id="id2" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/21FZKL3nBEQ"> </iframe>
                   	   </div>
                       
               		   <div id="id3"class="tab-pane embed-responsive embed-responsive-16by9">
                   			<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/yy5P5IVj7Kk"> </iframe>
                   	   </div>
                       
               		   <div id="id4" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/cgvFEhllABE"> </iframe>
                   	   </div>
                        
               		   <div id="id5" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/5pmdRF39p9Y"> </iframe>
                   	   </div>  
                       
               		   <div id="id6" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/dzdSib0bd4U"> </iframe>
                   	   </div> 
                       
                    </div>
                </div>
                 <!-- DIV DA População e migrações  -->
                 <div id="tab2-2" class="container tab-pane mt-4 ">
                <p> População e migrações </p>
                </div>
                <!-- DIV DA Urbanização  -->
                 <div id="tab2-3" class="container tab-pane mt-4 ">
                <p> Urbanização </p>
                </div>
                <!-- DIV DA  Globalização e Indústria -->
                 <div id="tab2-4" class="container tab-pane mt-4 ">
                <p>  Globalização e Indústria </p>
                </div>
                <!-- DIV DA  Geografia física  -->
                <div id="tab2-5"class="container tab-pane mt-4 ">
                <p>  Geografia física </p>
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
                 <!-- DIV DA Interpretação -->
                 <div id="tab4-1" class="container tab-pane mt-4 ">
                <p> Interpretação</p>
                </div>
                 <!-- DIV DA Escolas Literárias   -->
                 <div id="tab4-2" class="container tab-pane mt-4 ">
                <p> Escolas Literárias   </p>
                </div>
                <!-- DIV DA Vanguardas Europeias  -->
                 <div id="tab4-3" class="container tab-pane mt-4 ">
                <p> Vanguardas Europeias </p>
                </div>
                
                
                
 <!-- DIV DA MATEMATICA 1 -->
                 <!-- DIV DA Matemática Básica -->
                 <div id="tab5-1" class="container-fluid tab-pane mt-4  "> 
                     <ul class="nav nav-pills nav-stacked col-2 ml-4 nav-justified" style="float:left"> 
                        <li class="nav-item" >
                            <a  class= "nav-link active link" data-toggle="pill" href="#m1"> Adição e Subtração </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#m2"> Multiplicação e Divisão </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#m3"> Expressões Numéricas </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#m4"> Frações </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#m5"> Potenciação </a>
                            <a  class= "nav-link link" data-toggle="pill" href="#m6"> Radiciação </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m7"> Racionalização de Denominadores </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m8"> Produtos Notáveis </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m9">  Notação Científica </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m10"> Sistema Métrico Decimal </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m11"> Números Primos </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m12"> Fatoração </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m13"> MMC </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m14"> MDC </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m15"> Razão e Proporção I </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m16"> Razão e Proporção II </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m17"> Regra de Três I  </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m18"> Regra de Três II </a>
							<a  class= "nav-link link" data-toggle="pill" href="#m19"> Escalas Numéricas </a>
						
                     </ul>

                     <div class="tab-content col-md-9"  style="float:left">
                    	<div id="m1" class="show active tab-pane embed-responsive embed-responsive-16by9">
                    		<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/e78_5WIssSU" > </iframe>
               		   </div>

               		   <div id="m2" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/0UGJRHq2PS4"> </iframe>
                   	   </div>
                       
               		   <div id="m3"class="tab-pane embed-responsive embed-responsive-16by9">
                   			<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/BhDm2qGy780"> </iframe>
                   	   </div>
                       
               		   <div id="m4" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/YJyY6A_MOQc"> </iframe>
                   	   </div>
                        
               		   <div id="m5" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/4Vfw1XiHTpM"> </iframe>
                   	   </div>  
                       
               		   <div id="m6" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/QmIjZgKhAEo"> </iframe>
                   	   </div> 
					   
					    <div id="m7" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/04nnroZrmgg"> </iframe>
                   	   </div> 
					   
					    <div id="m8" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/_3YQvVKbqn0"> </iframe>
                   	   </div> 
					   
					    <div id="m9" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/GPTxrh_mhow"> </iframe>
                   	   </div>  
					   
					    <div id="m10" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/epFmO0M8gDk"> </iframe>
                   	   </div>  
					   
					    <div id="m11" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/MrHhUUnOtPc"> </iframe>
                   	   </div> 
					   
					    <div id="m12" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/kjg8a41wwjQ"> </iframe>
                   	   </div>  
					   
					    <div id="m13" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/QCMUMufcK5M"> </iframe>
                   	   </div>  
					   
					    <div id="m14" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/NWtwEm8M2qw"> </iframe>
                   	   </div>  
					   
					    <div id="m15" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/uIulBEk8gcM"> </iframe>
                   	   </div>  
					   
					    <div id="m16" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/6Dsta1eZ1BA"> </iframe>
                   	   </div>  
					   
					    <div id="m17" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/alLifth7gxE"> </iframe>
                   	   </div> 
					   
					    <div id="m18" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/buYey1YGJhA"> </iframe>
                   	   </div> 
					   
					    <div id="m19" class="tab-pane embed-responsive embed-responsive-16by9">
                   			 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/qrix-SCMvjA"> </iframe>
                   	   </div> 
					   
                    </div>
                </div>
                 <!-- DIV DA Equação de 1° Grau e 2° Grau  -->
                 <div id="tab5-2" class="container tab-pane mt-4 ">
                <p> Equação de 1° Grau e 2° Grau </p>
                </div>
                <!-- DIV DA Porcentagem e Juros  -->
                 <div id="tab5-3" class="container tab-pane mt-4 ">
                <p> Porcentagem e Juros </p>
                </div>
                <!-- DIV DA  Matemática - PA -->
                 <div id="tab5-4" class="container tab-pane mt-4 ">
                <p>  Matemática - PA  </p>
                </div>
                <!-- DIV DA Matemática - PG -->
                <div id="tab5-5" class="container tab-pane mt-4 ">
                <p>  Matemática - PG </p>
                </div>
                 <!-- DIV DA Inequação de 1° e 2° Grau -->
                 <div id="tab5-6" class="container tab-pane mt-4 ">
                <p> Inequação de 1° e 2° Grau</p>
                </div>
                 <!-- DIV DA Conjuntos Numéricos  -->
                 <div id="tab5-27"class="container tab-pane mt-4 ">
                <p> Conjuntos Numéricos </p>
                </div>
                <!-- DIV DA Conjuntos Numéricos -->
                 <div id="tab5-8" class="container tab-pane mt-4 ">
                <p> Conjuntos Numéricos </p>
                </div>
                <!-- DIV DA  Conjuntos Numéricos -->
                 <div id="tab5-9"class="container tab-pane mt-4 "> 
                <p> Conjuntos Numéricos  </p>
                </div>
                <!-- Conjuntos Numéricos -->
                <div id="tab5-10" class="container tab-pane mt-4 "> 
                <p>  Conjuntos Numéricos </p>
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
                 <!-- Noções Básicas Vetores-->
                 <div id="tab7-1" class="container tab-pane mt-4 ">
                <p> Noções Básicas Vetores</p>
                </div>
                 <!-- Cinemática  -->
                 <div id="tab7-2" class="container tab-pane mt-4 ">
                <p> Cinemática</p>
                </div>
                <!-- Dinâmica  -->
                 <div id="tab7-3" class="container tab-pane mt-4 ">
                <p> Porcentagem e Juros </p>
                </div>
                <!-- Estática -->
                 <div id="tab7-4" class="container tab-pane mt-4 ">
                <p>  Estática  </p>
                </div>
                <!-- Energia-->
                <div id="tab7-5" class="container tab-pane mt-4 ">
                <p>  Energia </p>
                </div>
                 <!-- Termologia -->
                 <div id="tab7-6" class="container tab-pane mt-4 ">
                <p> Termologia</p>
                </div>
                 <!-- Hidrostática  -->
                 <div id="tab7-7" class="container tab-pane mt-4 ">
                <p> Hidrostática </p>
                </div>
                <!-- Eletroestática -->
                 <div id="tab7-8" class="container tab-pane mt-4 ">
                <p> Eletroestática</p>
                </div>
                <!--  Eletrodinâmica -->
                 <div id="tab7-9" class="container tab-pane mt-4 ">
                <p>  Eletrodinâmica  </p>
                </div>
                <!-- Eletromagnetismo -->
                <div id="tab7-10" class="container tab-pane mt-4 ">
                <p>  CEletromagnetismo </p>
                </div>
                <!--Ondulatória -->
                <div id="tab7-11" class="container tab-pane mt-4 ">
                <p>  Ondulatória </p>
                </div>
                
                <!--Óptica -->
                <div id="tab7-12" class="container tab-pane mt-4 ">
                <p>  Óptica </p>
                </div>   
                
                
<!-- DIV DA QUIMICA -->
                 <!-- Quimica basica-->
                 <div id="tab8-1" class="container tab-pane mt-4 ">
                <p> Quimica basica</p>
                </div>
                 <!-- Propriedades da matéria  -->
                 <div id="tab8-2" class="container tab-pane mt-4 ">
                <p> Propriedades da matéria</p>
                </div>
                <!-- Ligações Quimicas  -->
                 <div id="tab8-3"class="container tab-pane mt-4 ">
                <p> Ligações Quimicas </p>
                </div>
                <!-- Soluções -->
                 <div id="tab8-4" class="container tab-pane mt-4 ">
                <p>  Soluções  </p>
                </div>
                <!-- Estequiometria e Reações Quimicas-->
                <div id="tab8-5" class="container tab-pane mt-4 ">
                <p>  Estequiometria e Reações Quimicas </p>
                </div>
                 <!-- Funções Inorgânicas -->
                 <div id="tab8-6" class="container tab-pane mt-4 ">
                <p> Funções Inorgânicas</p>
                </div>
                 <!-- Termoquímica  -->
                 <div id="tab8-7" class="container tab-pane mt-4 ">
                <p> Termoquímica </p>
                </div>
                <!-- Cinética e Equilíbrio Químico -->
                 <div id="tab8-8" class="container tab-pane mt-4 ">
                <p> Cinética e Equilíbrio Químico</p>
                </div>
                <!--  Eletroquímica e Radiotividade -->
                 <div id="tab8-9" class="container tab-pane mt-4 ">
                <p>  Eletroquímica e Radiotividade  </p>
                </div>
                <!-- Físicoquímica -->
                <div id="tab8-10" class="container tab-pane mt-4 ">
                <p>  Físicoquímica </p>
                </div>
                <!--Química Organica -->
                <div id="tab8-11" class="container tab-pane mt-4 ">
                <p>  Química Organica </p>
                </div>
                
                <!--Isomeria -->
                <div id="tab8-12" class="container tab-pane mt-4 ">
                <p>  Isomeria </p>
                </div> 
                
               <!--Reações Orgânicas -->
                <div id="tab8-13"class="container tab-pane mt-4 ">
                <p>  Reações Orgânicas </p>
                </div> 
                
                
<!-- DIV DA BIOLOGIA -->
                 <!-- Ecologia -->
                 <div id="tab9-1" class="container tab-pane mt-4 ">
                <p> Ecologia </p>
                </div>
                 <!-- Origem da Vida e Evolução   -->
                 <div id="tab9-2" class="container tab-pane mt-4 ">
                <p> Origem da Vida e Evolução </p>
                </div>
                <!-- Bioquímica  -->
                 <div id="tab9-3" class="container tab-pane mt-4 ">
                <p> Bioquímica  </p>
                </div>
                <!-- Citologia -->
                 <div id="tab9-4" class="container tab-pane mt-4 ">
                <p>  Citologia   </p>
                </div>
                <!-- Histologia -->
                <div id="tab9-5" class="container tab-pane mt-4 ">
                <p>  Histologia  </p>
                </div>
                 <!-- Genética -->
                 <div id="tab9-6" class="container tab-pane mt-4 "> 
                <p>Genética</p>
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
                <p>  Eletroquímica e Radiotividade  </p>
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
	</html>