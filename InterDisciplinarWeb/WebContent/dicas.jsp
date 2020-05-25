<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Sobre o Enem</title>
		<!-- lib do bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<!-- CABO lib do bootstrap -->
		<style>
			body {
				position: relative;
			}
			
			.scrollspySite{
				position: relative;
				overflow:auto;
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
			
			.alterarbtn2 {
			  background-color: #27496d;
			  color: white;
			  padding: 14px 20px;
			  margin: 8px 0;
			  border: none;
			  cursor: pointer;
			  width: 250px;
			}
		</style>
	</head>
    
	<body data-spy="scroll" data-target=".navbar" data-offset="50"  style="background-color:#f6f4f4">
    
	    <!-- MENU SUPERIOR -->
		<c:import url="Menu.jsp"/> 

    	<!-- TITULO -->
    	<div class="row">

    	
    		<div class="col-12 text-center my-5">
    			
                <img src="https://i.imgur.com/bFbWaGw.png"  class="img-fluid" alt="Responsive image">            
                
                 <p> O ENEM � um t�pico abertamente falado e que � notoriamente conhecido por todos os brasileiros. </p>
                 <p> Por�m, voc� conhece todas as nuances dessa prova e 
                 os melhores m�todos de estudo para se preparar para a mesma? </p>
                <p> </p>

   			 </div>
             
             
    	</div>
        <!-- cabo TITULO -->
        <div class="row mb-5 " >
       <!-- MENU LATERAL  -->
        	<div class="col-2">
            
            <nav id="navbarVertical" class="navbar navbar-light" style="background-color:#f0f0f0">
            <nav class"nav nav-pills flex-column">
            
            <a class="nav-link ml-3 SUBTITULO" href="#item1"> <b> Calculo da Nota  </a>
                <nav class="nav  nav-pills flex-column">
                    <a class="nav-link ml-5 link" href="#item1-1"> O que � a TRI?</a>
                    <a class="nav-link ml-5 link" href="#item1-2"> N�veis das Quest�es </a>
                </nav>
            <a class="nav-link ml-3 SUBTITULO" href="#item2"> Plano de Estudos </a>
            <a class="nav-link ml-3 SUBTITULO" href="#item3"> Roteiro de Estudos  </a>
            <a class="nav-link ml-3 SUBTITULO" href="#item4"> Sisu </a>
			   <nav class="nav  nav-pills flex-column">
                    <a class="nav-link ml-5 link" href="#item4-1"> Como o sisu funciona?</a>
                    <a class="nav-link ml-5 link" href="#item4-2"> Quem pode se escrever? </a>
					<a class="nav-link ml-5 link" href="#item4-3"> Modalidades de Inscri��o </b> </a>
                </nav>

            
             </nav>
            
            </nav>
            
            </div>
        
             <!-- cabo MENU LATERAL  -->
            
            <div class="container">
            <div class="col-9">
            
            <div data-spy="scroll" data-target="#navbarVertical" data-offset="0" class="scrollspySite">
            
            	<h2 id="item1" class="display-4 text-center my-1 mb-4 TITULO" > Calculo da Nota </h2>
                <p  class="text-center my-5" >                 
                
                <p>A nota final do ENEM, calculada por�computador, considera principalmente a <b class="link">consist�ncia das respostas</b>. Dois alunos 
                com cinco quest�es certas em Matem�tica, por exemplo, podem ter notas diferentes. O que acertou 
                as cinco mais f�ceis ter� uma nota maior, pois seu desempenho � coerente. </p>
                <p> O outro, que <b class="SUBTITULO"> errou quest�es f�ceis e acertou outras dif�ceis, ter� a sua nota reduzida </b> pelo c�lculo da 
                casualidade, ou seja, como sua profici�ncia foi pequena (cinco quest�es em 45), a TRI entender� o 
                acerto nas quest�es dif�ceis como "chute" e reduzir� o valor do item certo. </p>
                
                <h3 id="item1-1" class="SUBTITULO "> O que � a TRI?  </h3>
				<p> A Teoria de Resposta ao Item, a famosa TRI, � o algoritmo usado pelo Enem para corrigir e dar nota 
                �s quest�es da prova. <b class="link"> A Teoria � um modo de legitimar a prova e os conhecimentos dos alunos que a 
                fazem e � uma forma de impedir o chute.</b> </p>
                
                <img src="https://i.imgur.com/IOo54Gp.png" class="img-fluid" alt="Responsive image">
                
                                
                 <h3 id="item1-2" class="SUBTITULO "> N�veis das Quest�es  </h3>
                <p> Para a TRI funcionar, as 180 quest�es do Enem t�m n�veis: F�CIL, M�DIO e DIF�CIL. O algoritmo consegue identificar, pelo padr�o de erros e acertos do candidato, se ele acertou
					porqu� de fato sabia, ele acaba recebendo o ponto inteiro da quest�o
					Se chutou acaba n�o recebendo a pontua��o cheia. Desse jeito, a nota final n�o depende s� do
					n�mero de acertos, e sim do n�vel de dificuldade das quest�es que voc� acertou e das que errou. </p>
                    
                   <img src="https://i.imgur.com/lj0qh0L.png" class="img-fluid" alt="Responsive image">
                   
                   <p> A TRI tem como base os resultados da prova aplicada em 2009, ou seja a partir desses resultados o 
                   Inep construiu uma r�gua de valores que v�o de 100 a 1000 com o espa�o de 100 unidades, a m�dia � 500. </p>
					<p> N� r�gua s�o colocadas todas as quest�es, por seu grau de dificuldade. Assim, cada quest�o ocupa
					um lugar nela. </p>
					<p>	As mais f�ceis ficam para baixo de 500; as m�dias, por volta de 500; as mais dif�ceis, para cima: 600,
					700, 800. Durante a prova, as respostas �s quest�es v�o definindo o grau de conhecimento de cada
					aluno. </p>
					<p> Por exemplo, de um aluno com grau de conhecimento 600 em Matem�tica, espera-se que acerte as
					quest�es abaixo de 600 e erre as que est�o acima de 600. </p>
                
                                           	
   				 <h2 id="item2" class="display-4 text-center my-1 mb-4 TITULO" > Plano de Estudos </h2>
                <p> Sabendo como voc� vai ser avaliado, os conte�dos que v�o cair e ainda ter baixado o material de apoio, est� pronto para estudar! </p>
                <p> <b class="SUBTITULO"> Mas pera a�, voc� sabe estudar? </b></p>
                <p> N�s disponibilizamos na AQUI todas as mat�rias que s�o cobradas na prova, mas quando, quanto tempo e onde � voc� que tem que organizar!</p>
                <p>  <b class="link"> Deve organizar sua rotina, para inserir um tempo para os estudos.</b> Escolha os seus hor�rios, perceba quando rende mais: de manh�, tarde ou a noite. E comece gradativametne a estudar. 
               <b class="SUBTITULO"> Seja realista </b>, voc� n�o vai conseguir estudar no primeiro dia 6 horas seguidas, ir� somente se frustar! <b class="link"> Comece com metas pequenas. </b> </p>
                <P> E muito importante! Assistir aulas � estudar <b class="SUBTITULO"> PASSIVAMENTE </b>, resolver quest�es �   <b class="link"> ATIVAMENTE </b>. Logo, n�o adianta assistir um peri�do inteiro de aulas e 
                n�o fixar e avaliar o que foi assistido com os 
                exerc�cios. </P>
                <p> <b class="link">  Altere as disciplinas </b>, as vezes voc� gosta mais de uma mat�ria e tem mais dificuldade em outra. Por exemplo, tem facilidade com Literatura e dificuldade com Biologia, 
                alterne entre as duas no seu hor�rio 
                de estudos, assim voc� n�o vai se cansar tanto quanto se tivesse estudado um dia todo de Biologia e Qu�mica (que s�o mat�rias densas). </p>
                <p>  <b class="SUBTITULO"> Coloque SEMPRE uma meta semanal e di�ria! </b> Quantos exerc�cios vou fazer at� domingo? Qual a taxa de acerto que eu quero conseguir nos exerc�cios de hoje? E aumente gradativamente
                suas metas, e voc� ver� que sempre que cumprir uma vai te dar um g�s para a pr�xima fase. <b class="link"> Conseguir� ver seu progresso e tamb�m como voc� � capaz de melhorar. </b> </p>
                <p> <b class="SUBTITULO"> N�O SE ESQUE�A DE DESCANSAR! </b> </p>
                <p> No seu plano de estudos, tem que sim, ter um tempo pra relaxar e se destrair. Para n�o sair do controle e entrar no modo procrastina��o,  <b class="link"> se d� recompensas. </b> Ap�s cumprir suas metas, 
                se d� um tempo, um filme ou sa�da com os amigos!</p>
                
                
                
                
                
                 <h2 id="item3" class="display-4 text-center my-1 mb-4 TITULO" > Roteiro de Estudos </h3>
                <p  class="text-center my-5" > Se voc� n�o sabe por onde come�ar a estudar <b class="SUBTITULO"> a gente te ajuda!</b>  </p> 
				<p> O conte�do do nosso site j� � feito todo em ordem para facilitar a busca pelo material. Mas, se mesmo assim voc� quiser um caminho mais espec�fico e que marca o seu caminho e metas, disponibilizamos um cronograma de estudos para te auxiliar.</p>
				<p> <b class="link"> S� clicar no bot�o abaixo para ter acesso! </b> </p> 
				<p  class="text-center my-5" >
				 <a href="https://drive.google.com/open?id=1WLsZ6ts6KMNlSzQTYzvUDMjdCdXjVo8N" target="_blank"> <button class="alterarbtn2" ><b> Cronograma de Estudos </b></button> </a>
                </p>
                  <h2 id="item4" class="display-4 text-center my-1 mb-4 TITULO" > SISU </h3>
                <p   class="text-center my-5" > <b class="SUBTITULO"> O Sistema de Sele��o Unificada (Sisu)</b> � um sistema informatizado, gerenciado pelo Minist�rio da Educa��o (MEC) e teve sua primeira edi��o em 2010. 
				Nele, as institui��es p�blicas de ensino superior oferecem vagas para quem participou do Exame Nacional de Ensino M�dio, o Enem.</p> 
				
				<h3 id="item4-1" class="SUBTITULO my-2"> Como o sisu funciona?</H3>
				<p> O SISU faz <b class="link"> dois processos seletivos por ano:</b> um no in�cio do primeiro semestre, outro no in�cio do segundo semestre. 
				H� s� uma etapa de inscri��o em cada processo seletivo. <p> Nela, voc� <b class="SUBTITULO">pode escolher dois cursos</b>, na ordem de prefer�ncia, entre as vagas ofertadas.
				Voc� tamb�m <b class="link"> precisa definir se quer se inscrever para as vagas de ampla concorr�ncia, �s reservadas pela Lei de Cotas ou �s destinadas a outras pol�ticas afirmativas das institui��es. </b> </p> 
				<b class="SUBTITULO"> E d� para mudar de ideia? </b> <b class="link"> D� sim: </b> voc� pode mudar suas op��es at� as inscri��es se encerrarem.
				Depois, o sistema seleciona automaticamente aqueles candidatos que ficaram melhor classificados em cada curso, levando em considera��o as suas notas do ENEM 
				<b class="SUBTITULO">(e os pesos que cada mat�ria tem no curso que voc� escolheu no Sisu). </b>
				<br>
				<p>  <b class="link"> � realizada s� uma chamada para matr�cula. </b> Lembre-se de que voc� tem um prazo para fazer a inscri��o e garantir a sua vaga. </p>

                <h3 id="item4-2" class="SUBTITULO my-2">Quem pode se escrever? </h3>
				<p> Se voc� fez a �ltima edi��o do ENEM e <b class="SUBTITULO"> n�o zerou a reda��o. </b>  Al�m disso, tem que ter completado o ensino m�dio ou seja:  <b class="link">  n�o pode ser treineiro! </b> </p> 
				<p> <b class="SUBTITULO"> OBS: </b> Caso voc� tenha menos de 18 anos e tenha completado o Ensino m�dio e consiga a vaga pelo SISU, a matr�cula deve ser feita acompanhado de um respons�vel.
				<p> Vale lembrar que alguns cursos<b class="SUBTITULO">  exigem uma nota m�nima para se inscrever. </b> </p>
				<p> <b class="link">  Eu j� estou na faculdade, posso me inscrever no SISU?</b> <i>  A resposta � sim! </i> Mas, se voc� j� estuda em uma institui��o p�blica e passar na sele��o, vai ter que escolher qual curso quer fazer. </p>
				
				<p> O SISU <b class="SUBTITULO">  depende totalmente do ENEM:</b> s� pode se candidatar a vagas quem fez a �ltima edi��o do exame. Quando voc� se inscreve no SISU, o sistema importa automaticamente as suas informa��es e as notas do ENEM. </p>

				<p> <b class="link"> Mas aten��o, eles s�o coisas bem diferentes, ok? </b> <b> O Enem � uma  prova</b>, e o <i>SISU, um sistema de sele��o:</i> voc� s� precisa se inscrever para concorrer a uma vaga. </p>
				
				<p> Os candidatos que forem se inscrever no Sisu em 2020 precisar�o, por exemplo, terem feito a edi��o de 2019 do ENEM. </p>
				
				<h3 id="item4-3" class="SUBTITULO my-2"> Modalidades de Inscri��o</H3>
				<p> S�o tr�s as modalidades de inscri��o no SISU: <b class="SUBTITULO"> ampla concorr�ncia,</b> <b class="link">cotas </b> e <b class="SUBTITULO"> a��es afirmativas das pr�prias institui��es.</b> Para participar da ampla concorr�ncia, tudo que voc� precisa � ter feito a edi��o do ENEM no ano anterior. </p> 
				<p>J� a Lei de Cotas (12.711/2012) determina que as institui��es devem <b class="link"> reservar 50% das vagas para alunos que estudaram em escolas p�blicas.</b> Entre elas, metade � destinada a estudantes com renda familiar bruta mensal de 
				at� um sal�rio m�nimo e meio por pessoa. Al�m disso, um percentual das vagas � reservado a estudantes autodeclarados pretos, pardos ou ind�genas. </p>
				<p> <b class="SUBTITULO">Diferentemente, </b> as a��es afirmativas dependem de cada institui��o e n�o s�o obrigat�rias, e podem acontecer pela reserva de vagas ou por um b�nus na nota final do candidato. </p> 
				<p> <b> <i class="link">Aten��o:</i> a concorr�ncia � s� com quem est� inscrito na mesma modalidade que voc�!</b> </p>
				
				<p> <b class="SUBTITULO"> OBSERVA��ES: </b> </p> 

					<p> Para poder participar das listas de espera, como no Sisu tem duas escolhas existem algumas regras, que s�o as seguintes: </p>
					<p> <b class="link">1� caso </b>  passe na sua primeira op��o, voc� n�o participa de nenhuma lista de espera.</p>
					<p> <b class="link">2� caso </b>  passe na sua segunda op��o e n�o passe na primeira, voc� n�o consegue entrar na lista de espera da sua primeira op��o</p>
					<p> <b class="link">3� caso  </b> n�o passe em nenhuma das suas duas op��es, voc� pode escolher em qual lista de espera voc� quer participar.</p>

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