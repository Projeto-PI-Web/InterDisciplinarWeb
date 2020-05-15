<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Apostilas</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<style>
			body {
				position: relative;
			}
			.scrollspySite{
				position: relative;
				overflow:auto;
			}
			.alterarbtn {
			  background-color: #27496d;
			  color: white;
			  padding: 14px 20px;
			  margin: 8px 0;
			  border: none;
			  cursor: pointer;
			  width: 150px;
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
			.TITULO{
				color:#142850
			}
			.SUBTITULO{
				color:#27496d
			}
			.link{
				color:#00909e
			}
		</style>
	</head>
	
	<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:#f6f4f4">
	
	<c:import url="Menu.jsp"/>  
	
    	<div class="row">
    		<div class="col-12 text-center my-5">
                <img src="https://i.imgur.com/Lfqz9An.png" class="img-fluid" alt="Responsive image">
                <p> Para um excelente efeito no Enem você deve ter acesso aos conteúdos que melhor vão te adequar a prova. <br>
                 Por conta disso, separamos apostilas, simulados e provas antigas para te auxiliar nessa jornada. </p>
                <p> </p>
   			 </div>
    	</div>
        <div class="row mb-5 " >
        	<div class="col-2">
            <nav id="navbarVertical" class="navbar navbar-dark" style="background-color:#f0f0f0" >
            <nav class"nav nav-pills flex-column">
            <a class="nav-link ml-3 SUBTITULO" href="#item1"> <b>Apostilas </b></a>
                <nav class="nav  nav-pills flex-column">
                    <a class="nav-link ml-5 link " href="#item1-1" > <b>Hexag</b> </a>
                    <a class="nav-link ml-5 link " href="#item1-2"><b> Revisão Enem </b></a>
                    <a class="nav-link ml-5 link" href="#item1-3"> <b>Unesp </b></a>
                    <a class="nav-link ml-5 link" href="#item1-4"> <b>MeSalva! </b></a>
                </nav>
            <a class="nav-link ml-3 SUBTITULO" href="#item2"> <b>Simulados</b> </a>
            <a class="nav-link ml-3 SUBTITULO" href="#item3"> <b>Provas Anteriores</b></a>
                 <nav class="nav  nav-pills flex-column">
                    <a class="nav-link ml-5 link" href="#item3-1"><b> Enem 2019</b> </a>
                    <a class="nav-link ml-5 link" href="#item3-2"> <b>Enem 2018</b> </a>
                    <a class="nav-link ml-5 link" href="#item3-3"> <b>Enem 2017</b> </a>
                </nav>
             </nav>
            </nav>
            </div>
            <div class="container">
            <div class="col-9">
            <div data-spy="scroll" data-target="#navbarVertical" data-offset="0" class="scrollspySite">
            	<h2 id="item1" class="display-4 text-center my-1 mb-4 TITULO" > Apostilas </h4>
                <p > As ferramentas que você usa para o seu estudo render e ser de qualidade é o que garante um bom resultado. <br>  Reunimos as apostilas e livros dos melhores cursinhos 
                (disponibilizados gratuitamente por cada instituição) e explicamos o foco de cada um tem. <br> E qual pode se encaixar melhor no seu plano de estudos! </p> 
                 <h3 id="item1-1" class="SUBTITULO" > Hexag </h3>
                <p> O Hexag é um curso pré-vestiubular especializado no concorrido vestibular de medicina, disponibiliza para os estudantes que não tem condição de acesso ao curso, o material didático do ano anterior em PDF.  				                </p>
                <p> O conteúdo do Hexag é bem sucinto e completo, porém, a carga de estudo pode ser muito extensiva se você não montar um bom plano de estudos 
                (para aprender a montar um, <a href="dicas.html" target="_blank" class="link"> clique aqui</a>) ou já tenha uma boa noção dos tópicos do ENEM. 
                <p> O Hexag possui todos os direitos autoriais, os links de download são direcionados diretamente para o Drive do mesmo onde você consegue adquirir os arquivos. </p>
               <p  class="text-center my-5" >
               <a href="https://drive.google.com/drive/folders/1rV4pnkVsgUhCnIta-dmQ1Ajrz_vm2ATC" target="_blank"> <button class="alterarbtn" > <b> Volume 1 </b> </button> </a>
               <a href="https://drive.google.com/drive/folders/1YJtDefQp-CME6RLgPKiTKRs98oU7-PVG" target="_blank"><button class="alterarbtn" > <b>Volume 2  </b></button> </a>
               <a href="https://drive.google.com/drive/folders/1UNHqzwCGJ4E7FCGYSjarm0LfYqhJn08Q" target="_blank"> <button class="alterarbtn" > <b> Volume 3  </b></button> </a> <br>
               <a href="https://drive.google.com/drive/folders/1f2puQeILtg3X5bA8xy6aQbkDLQrGKwis" target="_blank"><button class="alterarbtn" ><b> Volume 4  </b> </button> </a>
               <a href="https://drive.google.com/drive/folders/18nKdkt8DULoJ5-wCeeOFJv3qKIVnfGhH" target="_blank"><button class="alterarbtn" > <b>Volume 5 </b> </button> </a>
               <a href="https://drive.google.com/drive/folders/1alw-CukI5FzIC1-qDw8EadE_-jQEa7hZ" target="_blank"> <button class="alterarbtn" ><b> Volume 6  </b></button> </a>
               </p>
               <h4 id="item1-2" class="SUBTITULO"> Revisão Enem - Hexag </h4>
                <p> Disponibilizada pelo Hexag Medicina tem como objetivo verificar se você aprendeu os conteúdos estudados.</p>
                <p> O material apresenta indicação de temas e competências da matriz de referência do ENEM. Em cada questão, há explicação das habilidades aplicadas.</p>
                <p> Existe uma seleção de questões inéditas, adaptadas e PPL, ideais para exercitar a sua memória. Os assuntos esco-lhidos possuem grande incidência nos últimos anos do Enem. </p>
                <p> Clique no link abaixo para ser direcionado ao Driver do Hexag: </p>
                <p  class="text-center my-5" > <a href="https://drive.google.com/drive/folders/14jqe30m2T8VUhQ-X6G_ywxyvWne7iuGP" target="_blank"> <button class="alterarbtn" ><b> Revisão Enem  </b></button> </a> </p>
                 <h3 id="item1-3" class="SUBTITULO"> Unesp </h3>
                <p> O cursinho pré-vestibular da Unesp, organizado e desenvolvido pela universidade desde 1987. Mantém disponível para download em sua página, em pdf, sete cadernos feitos para estudandos em fase de
                 preparação para vestibulares. </p>
                 <p> Os cadernos pré-vestibulares foram organizados por professores da Universidade e têm como norte principal os temas da Matriz de Referência do Enem (Exame Nacional do Ensino Médio). </p>
				<p> Confira os links abaixo:</p>
               <p  class="text-center my-5" >
               <a href="https://www2.unesp.br/Home/servico_ses/caderno_linguagens_e_seus_codigos.pdf" target="_blank"> <button class="alterarbtn2" ><b> Apostila de Linguagens </b></button> </a>
               <a href="https://www2.unesp.br/Home/servico_ses/caderno_matematica.pdf" target="_blank"><button class="alterarbtn2" ><b> Apostila de Matemática</b></button> </a>
               <a href="https://www2.unesp.br/Home/servico_ses/caderno_biologia.pdf" target="_blank"> <button class="alterarbtn2" ><b> Apostila de Biologia</b> </button> </a> <br>
               <a href="https://www2.unesp.br/Home/servico_ses/caderno_fisica.pdf" target="_blank"><button class="alterarbtn2" ><b> Apostila de Física</b> </button> </a>
               <a href="https://www2.unesp.br/Home/servico_ses/caderno_quimica.pdf" target="_blank"><button class="alterarbtn2" ><b> Apostila de Química </b></button> </a>
               <a href="https://www2.unesp.br/Home/servico_ses/caderno_ciencias_-humanas.pdf" target="_blank"> <button class="alterarbtn2" ><b> Ciências Humanas</b> </button> </a>
               <a href="https://www2.unesp.br/Home/servico_ses/caderno-7---exercicios-1.pdf" target="_blank"> <button class="alterarbtn2" ><b> Apostila de Exercícios</b> </button> </a>
               </p>
                 <h4 id="item1-4 " class="SUBTITULO"> MeSalva! </h4>
                <p> O MeSalva! ofereceu mais de 25 apostilas em pdf com todo o conteúdo cobrado pelo Enem. O curso foi um dos pioneiros em vídeo aulas no Brasil, e ao longo de 10 anos se especializaram em vestibulares. </p>
   				<p> A linguagem é de fácil acesso e os mesmos abrangem o conteúdo de forma estimulante e atenciosamente, entendendo seu público-alvo.</p>
                <p> O site apenas pede um breve cadastro para liberar o download, abaixo seguem os links de cada tópico:</p>
                <p  class="text-center my-5" >
               <a href="https://materiais.mesalva.com/apostila-matematica-enem-vol1" target="_blank"> <button class="alterarbtn2" > <b>Matemática Vol - 1</b> </button> </a>
               <a href="https://materiais.mesalva.com/apostila-matematica-enem-vol2" target="_blank"><button class="alterarbtn2" ><b> Matemática Vol - 2</b> </button> </a>
               <a href="https://materiais.mesalva.com/apostila-matematica-enem-vol3" target="_blank"> <button class="alterarbtn2" ><b> Matemática Vol - 3</b> </button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-biologia-enem-vol1" target="_blank"> <button class="alterarbtn2" ><b> Biologia Vol - 1</b> </button> </a>
               <a href="https://materiais.mesalva.com/apostila-biologia-enem-vol2" target="_blank"> <button class="alterarbtn2" > <b>Biologia Vol - 2 </b></button> </a>
               <a href="https://materiais.mesalva.com/apostila-biologia-enem-vol3" target="_blank"> <button class="alterarbtn2" > <b>Biologia Vol - 3</b> </button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-quimica-enem-vol2" target="_blank"> <button class="alterarbtn2" ><b> Química Vol - 2 </b></button> </a>
               <a href="https://materiais.mesalva.com/apostila-quimica-enem-vol3" target="_blank"> <button class="alterarbtn2" > <b>Química Vol - 3 </b></button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-fisica-enem-vol1" target="_blank"><button class="alterarbtn2" > <b>Física Vol - 1 </b></button> </a>
               <a href="https://materiais.mesalva.com/apostila-fisica-enem-vol2" target="_blank"><button class="alterarbtn2" > <b> Física Vol - 2</b></button> </a> <br>
               <a href="hhttps://materiais.mesalva.com/apostila-geografia-enem-vol1" target="_blank"><button class="alterarbtn2" > <b>Geografia Vol - 1</b> </button> </a>
               <a href="https://materiais.mesalva.com/apostila-geografia-enem-vol2" target="_blank"><button class="alterarbtn2" >  <b>Geografia Vol - 2</b></button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-literatura-enem-vol1" target="_blank"><button class="alterarbtn2" > <b>Literatura Vol - 1</b> </button> </a>
               <a href="https://materiais.mesalva.com/apostila-literatura-enem-vol2" target="_blank"><button class="alterarbtn2" >  <b>Literatura Vol - 2</b></button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-historia-enem-vol1" target="_blank"><button class="alterarbtn2" > <b>História Vol - 1 </b></button> </a>
               <a href="https://materiais.mesalva.com/apostila-historia-enem-vol2" target="_blank"><button class="alterarbtn2" >  <b>História Vol - 2</b></button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-portugues-enem-vol1" target="_blank"><button class="alterarbtn2" > <b>Português Vol - 1</b> </button> </a>
               <a href="https://materiais.mesalva.com/apostila-portugues-enem-vol2" target="_blank"><button class="alterarbtn2" >  <b>Português Vol - 2</b></button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-sociologia-enem" target="_blank"><button class="alterarbtn2" > <b> Sociologia </b></button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-filosofia-enem" target="_blank"><button class="alterarbtn2" >  <b>Filosofia</b>  </button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-artes-enem" target="_blank"><button class="alterarbtn2" > <b> Artes</b>  </button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-ingles-enem" target="_blank"><button class="alterarbtn2" >  <b>Inglês </b> </button> </a> <br>
               <a href="https://materiais.mesalva.com/apostila-redacao-enem" target="_blank"><button class="alterarbtn2" > <b> Redação ENEM </b> </button> </a> 
               </p>
   				 <h4 id="item2" class="display-4 text-center my-1 mb-4 SUBTITULO"> Simulados </h4>
                <p> Fazer simulado ao decorrer dos seus estudos é a melhor forma de entender seus pontos fracos e fortes, possibilitando que você tenha um estudo mais direcionado e eficiente. É uma forma de você se 
                preparar emocionalmente para a prova. Estudos mostram que ao vivenciar várias vezes uma situação e, consequentemente, conquistar maior familiaridade com o que vai 
                enfrentar, você tem maiores chances de ficar menor ansioso, diminuindo também o nervosismo. Assim, você terá um melhor desempenho.</p>
                <p> Imprima o simulado abaixo, e pratique como será o dia da prova! </p> 
                <p> Cronometre o tempo, a comida de levará e o seu gerenciamento para resolver as questões. </p>
                <p  class="text-center my-5" >
               <a href="https://drive.google.com/drive/folders/1s9fZQf8PqRgqwIjKHOu79H0VlNfLoi1q" target="_blank"><button class="alterarbtn2" ><b> Primeiro dia </b></button> </a>
               <a href="https://drive.google.com/drive/folders/1-itIr0FndBLBAKOVYGh1KEt7UhNL35Gd" target="_blank"><button class="alterarbtn2" > <b> Segundo dia</b> </button> </a> 
               </p>
                  <h4 id="item3" class="display-4 text-center my-1 mb-4 SUBTITULO"> Provas Anteriores </h4>
                <p > Fazer as provas do Enem ajudam você a se familiarizar com o estilo de prova. As questões do Enem tem um formato bem específico, buscando mais do que verificar os conteúdos ministrados na escola, verificar 
                suas habilidades e competências. Ao resolver questões históricas do exame você compreende exatamente como você será avaliado.</p> 
                 <h4 id="item3-1" class="SUBTITULO"> Enem 2019 </h4>
                <p  class="text-center my-5" >
               <a href="http://download.inep.gov.br/educacao_basica/enem/provas/2019/caderno_de_questoes_1_dia_caderno_1_azul_aplicacao_regular.pdf" target="_blank"><button class="alterarbtn2" > <b>Primeiro dia </b></button> </a>
               <a href="http://download.inep.gov.br/educacao_basica/enem/gabaritos/2019/gabarito_1_dia_caderno_1_azul_aplicacao_regular.pdf" target="_blank"> <button class="alterarbtn2" ><b>  Gabarito </b> </button> </a> <br> 
               <a href="http://download.inep.gov.br/educacao_basica/enem/provas/2019/caderno_de_questoes_2_dia_caderno_7_azul_aplicacao_regular.pdf" target="_blank"><button class="alterarbtn2" > <b>Segundo dia</b> </button> </a>
               <a href="http://download.inep.gov.br/educacao_basica/enem/gabaritos/2019/gabarito_2_dia_caderno_7_azul_aplicacao_regular.pdf" target="_blank"><button class="alterarbtn2" ><b></b>  Gabarito  </button> </a> <br> 
               </p>
                 <h4 id="item3-2" class="SUBTITULO" > Enem 2018 </h4>
                <p  class="text-center my-5" >
               <a href="http://download.inep.gov.br/educacao_basica/enem/provas/2018/1DIA_01_AZUL_BAIXA.pdf" target="_blank"><button class="alterarbtn2" ><b> Primeiro dia </b></button> </a>
               <a href="http://download.inep.gov.br/educacao_basica/enem/gabaritos/2018/GAB_ENEM_2018_DIA_1_AZUL.pdf" target="_blank"> <button class="alterarbtn2" > <b> Gabarito </b> </button> </a> <br> 
               <a href="http://download.inep.gov.br/educacao_basica/enem/provas/2018/2DIA_07_AZUL_BAIXA.pdf" target="_blank"><button class="alterarbtn2" ><b> Segundo dia </b></button> </a>
               <a href="http://download.inep.gov.br/educacao_basica/enem/gabaritos/2018/GAB_ENEM_2018_DIA_2_AZUL.pdf" target="_blank"><button class="alterarbtn2" ><b>  Gabarito </b> </button> </a> <br> 
               </p>
               <h4 id="item3-3"class="SUBTITULO"> Enem 2017 </h4>
                <p  class="text-center my-5" >
               <a href="http://download.inep.gov.br/educacao_basica/enem/provas/2017/cad_1_prova_azul_5112017.pdf" target="_blank"><button class="alterarbtn2" ><b> Primeiro dia </b></button> </a>
               <a href="http://download.inep.gov.br/educacao_basica/enem/gabaritos/2017/cad_1_gabarito_azul_5112017.pdf" target="_blank"> <button class="alterarbtn2" > <b> Gabarito </b> </button> </a> <br> 
               <a href="http://download.inep.gov.br/educacao_basica/enem/provas/2017/cad_5_prova_amarelo_12112017.pdf" target="_blank"><button class="alterarbtn2" > <b>Segundo dia</b> </button> </a>
               <a href="http://download.inep.gov.br/educacao_basica/enem/gabaritos/2017/cad_5_gabarito_amarelo_12112017.pdf" target="_blank"><button class="alterarbtn2" > <b> Gabarito </b> </button> </a> <br> 
               </p>
            	</div>
        </div>
    </div>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="ProjetoPI/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>