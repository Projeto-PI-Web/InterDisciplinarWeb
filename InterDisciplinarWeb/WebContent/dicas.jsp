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
                
                 <p> O ENEM é um tópico abertamente falado e que é notoriamente conhecido por todos os brasileiros. </p>
                 <p> Porém, você conhece todas as nuances dessa prova e 
                 os melhores métodos de estudo para se preparar para a mesma? </p>
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
                    <a class="nav-link ml-5 link" href="#item1-1"> O que é a TRI?</a>
                    <a class="nav-link ml-5 link" href="#item1-2"> Níveis das Questões </a>
                </nav>
            <a class="nav-link ml-3 SUBTITULO" href="#item2"> Plano de Estudos </a>
            <a class="nav-link ml-3 SUBTITULO" href="#item3"> Roteiro de Estudos  </a>
            <a class="nav-link ml-3 SUBTITULO" href="#item4"> Sisu </a>
			   <nav class="nav  nav-pills flex-column">
                    <a class="nav-link ml-5 link" href="#item4-1"> Como o sisu funciona?</a>
                    <a class="nav-link ml-5 link" href="#item4-2"> Quem pode se escrever? </a>
					<a class="nav-link ml-5 link" href="#item4-3"> Modalidades de Inscrição </b> </a>
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
                
                <p>A nota final do ENEM, calculada por computador, considera principalmente a <b class="link">consistência das respostas</b>. Dois alunos 
                com cinco questões certas em Matemática, por exemplo, podem ter notas diferentes. O que acertou 
                as cinco mais fáceis terá uma nota maior, pois seu desempenho é coerente. </p>
                <p> O outro, que <b class="SUBTITULO"> errou questões fáceis e acertou outras difíceis, terá a sua nota reduzida </b> pelo cálculo da 
                casualidade, ou seja, como sua proficiência foi pequena (cinco questões em 45), a TRI entenderá o 
                acerto nas questões difíceis como "chute" e reduzirá o valor do item certo. </p>
                
                <h3 id="item1-1" class="SUBTITULO "> O que é a TRI?  </h3>
				<p> A Teoria de Resposta ao Item, a famosa TRI, é o algoritmo usado pelo Enem para corrigir e dar nota 
                às questões da prova. <b class="link"> A Teoria é um modo de legitimar a prova e os conhecimentos dos alunos que a 
                fazem e é uma forma de impedir o chute.</b> </p>
                
                <img src="https://i.imgur.com/IOo54Gp.png" class="img-fluid" alt="Responsive image">
                
                                
                 <h3 id="item1-2" class="SUBTITULO "> Níveis das Questões  </h3>
                <p> Para a TRI funcionar, as 180 questões do Enem têm níveis: FÁCIL, MÉDIO e DIFÍCIL. O algoritmo consegue identificar, pelo padrão de erros e acertos do candidato, se ele acertou
					porquê de fato sabia, ele acaba recebendo o ponto inteiro da questão
					Se chutou acaba não recebendo a pontuação cheia. Desse jeito, a nota final não depende só do
					número de acertos, e sim do nível de dificuldade das questões que você acertou e das que errou. </p>
                    
                   <img src="https://i.imgur.com/lj0qh0L.png" class="img-fluid" alt="Responsive image">
                   
                   <p> A TRI tem como base os resultados da prova aplicada em 2009, ou seja a partir desses resultados o 
                   Inep construiu uma régua de valores que vão de 100 a 1000 com o espaço de 100 unidades, a média é 500. </p>
					<p> Ná régua são colocadas todas as questões, por seu grau de dificuldade. Assim, cada questão ocupa
					um lugar nela. </p>
					<p>	As mais fáceis ficam para baixo de 500; as médias, por volta de 500; as mais difíceis, para cima: 600,
					700, 800. Durante a prova, as respostas às questões vão definindo o grau de conhecimento de cada
					aluno. </p>
					<p> Por exemplo, de um aluno com grau de conhecimento 600 em Matemática, espera-se que acerte as
					questões abaixo de 600 e erre as que estão acima de 600. </p>
                
                                           	
   				 <h2 id="item2" class="display-4 text-center my-1 mb-4 TITULO" > Plano de Estudos </h2>
                <p> Sabendo como você vai ser avaliado, os conteúdos que vão cair e ainda ter baixado o material de apoio, está pronto para estudar! </p>
                <p> <b class="SUBTITULO"> Mas pera aí, você sabe estudar? </b></p>
                <p> Nós disponibilizamos na AQUI todas as matérias que são cobradas na prova, mas quando, quanto tempo e onde é você que tem que organizar!</p>
                <p>  <b class="link"> Deve organizar sua rotina, para inserir um tempo para os estudos.</b> Escolha os seus horários, perceba quando rende mais: de manhã, tarde ou a noite. E comece gradativametne a estudar. 
               <b class="SUBTITULO"> Seja realista </b>, você não vai conseguir estudar no primeiro dia 6 horas seguidas, irá somente se frustar! <b class="link"> Comece com metas pequenas. </b> </p>
                <P> E muito importante! Assistir aulas é estudar <b class="SUBTITULO"> PASSIVAMENTE </b>, resolver questões é   <b class="link"> ATIVAMENTE </b>. Logo, não adianta assistir um periódo inteiro de aulas e 
                não fixar e avaliar o que foi assistido com os 
                exercícios. </P>
                <p> <b class="link">  Altere as disciplinas </b>, as vezes você gosta mais de uma matéria e tem mais dificuldade em outra. Por exemplo, tem facilidade com Literatura e dificuldade com Biologia, 
                alterne entre as duas no seu horário 
                de estudos, assim você não vai se cansar tanto quanto se tivesse estudado um dia todo de Biologia e Química (que são matérias densas). </p>
                <p>  <b class="SUBTITULO"> Coloque SEMPRE uma meta semanal e diária! </b> Quantos exercícios vou fazer até domingo? Qual a taxa de acerto que eu quero conseguir nos exercícios de hoje? E aumente gradativamente
                suas metas, e você verá que sempre que cumprir uma vai te dar um gás para a próxima fase. <b class="link"> Conseguirá ver seu progresso e também como você é capaz de melhorar. </b> </p>
                <p> <b class="SUBTITULO"> NÃO SE ESQUEÇA DE DESCANSAR! </b> </p>
                <p> No seu plano de estudos, tem que sim, ter um tempo pra relaxar e se destrair. Para não sair do controle e entrar no modo procrastinação,  <b class="link"> se dê recompensas. </b> Após cumprir suas metas, 
                se dê um tempo, um filme ou saída com os amigos!</p>
                
                
                
                
                
                 <h2 id="item3" class="display-4 text-center my-1 mb-4 TITULO" > Roteiro de Estudos </h3>
                <p  class="text-center my-5" > Se você não sabe por onde começar a estudar <b class="SUBTITULO"> a gente te ajuda!</b>  </p> 
				<p> O conteúdo do nosso site já é feito todo em ordem para facilitar a busca pelo material. Mas, se mesmo assim você quiser um caminho mais específico e que marca o seu caminho e metas, disponibilizamos um cronograma de estudos para te auxiliar.</p>
				<p> <b class="link"> Só clicar no botão abaixo para ter acesso! </b> </p> 
				<p  class="text-center my-5" >
				 <a href="https://drive.google.com/open?id=1WLsZ6ts6KMNlSzQTYzvUDMjdCdXjVo8N" target="_blank"> <button class="alterarbtn2" ><b> Cronograma de Estudos </b></button> </a>
                </p>
                  <h2 id="item4" class="display-4 text-center my-1 mb-4 TITULO" > SISU </h3>
                <p   class="text-center my-5" > <b class="SUBTITULO"> O Sistema de Seleção Unificada (Sisu)</b> é um sistema informatizado, gerenciado pelo Ministério da Educação (MEC) e teve sua primeira edição em 2010. 
				Nele, as instituições públicas de ensino superior oferecem vagas para quem participou do Exame Nacional de Ensino Médio, o Enem.</p> 
				
				<h3 id="item4-1" class="SUBTITULO my-2"> Como o sisu funciona?</H3>
				<p> O SISU faz <b class="link"> dois processos seletivos por ano:</b> um no início do primeiro semestre, outro no início do segundo semestre. 
				Há só uma etapa de inscrição em cada processo seletivo. <p> Nela, você <b class="SUBTITULO">pode escolher dois cursos</b>, na ordem de preferência, entre as vagas ofertadas.
				Você também <b class="link"> precisa definir se quer se inscrever para as vagas de ampla concorrência, às reservadas pela Lei de Cotas ou às destinadas a outras políticas afirmativas das instituições. </b> </p> 
				<b class="SUBTITULO"> E dá para mudar de ideia? </b> <b class="link"> Dá sim: </b> você pode mudar suas opções até as inscrições se encerrarem.
				Depois, o sistema seleciona automaticamente aqueles candidatos que ficaram melhor classificados em cada curso, levando em consideração as suas notas do ENEM 
				<b class="SUBTITULO">(e os pesos que cada matéria tem no curso que você escolheu no Sisu). </b>
				<br>
				<p>  <b class="link"> É realizada só uma chamada para matrícula. </b> Lembre-se de que você tem um prazo para fazer a inscrição e garantir a sua vaga. </p>

                <h3 id="item4-2" class="SUBTITULO my-2">Quem pode se escrever? </h3>
				<p> Se você fez a última edição do ENEM e <b class="SUBTITULO"> não zerou a redação. </b>  Além disso, tem que ter completado o ensino médio ou seja:  <b class="link">  não pode ser treineiro! </b> </p> 
				<p> <b class="SUBTITULO"> OBS: </b> Caso você tenha menos de 18 anos e tenha completado o Ensino médio e consiga a vaga pelo SISU, a matrícula deve ser feita acompanhado de um responsável.
				<p> Vale lembrar que alguns cursos<b class="SUBTITULO">  exigem uma nota mínima para se inscrever. </b> </p>
				<p> <b class="link">  Eu já estou na faculdade, posso me inscrever no SISU?</b> <i>  A resposta é sim! </i> Mas, se você já estuda em uma instituição pública e passar na seleção, vai ter que escolher qual curso quer fazer. </p>
				
				<p> O SISU <b class="SUBTITULO">  depende totalmente do ENEM:</b> só pode se candidatar a vagas quem fez a última edição do exame. Quando você se inscreve no SISU, o sistema importa automaticamente as suas informações e as notas do ENEM. </p>

				<p> <b class="link"> Mas atenção, eles são coisas bem diferentes, ok? </b> <b> O Enem é uma  prova</b>, e o <i>SISU, um sistema de seleção:</i> você só precisa se inscrever para concorrer a uma vaga. </p>
				
				<p> Os candidatos que forem se inscrever no Sisu em 2020 precisarão, por exemplo, terem feito a edição de 2019 do ENEM. </p>
				
				<h3 id="item4-3" class="SUBTITULO my-2"> Modalidades de Inscrição</H3>
				<p> São três as modalidades de inscrição no SISU: <b class="SUBTITULO"> ampla concorrência,</b> <b class="link">cotas </b> e <b class="SUBTITULO"> ações afirmativas das próprias instituições.</b> Para participar da ampla concorrência, tudo que você precisa é ter feito a edição do ENEM no ano anterior. </p> 
				<p>Já a Lei de Cotas (12.711/2012) determina que as instituições devem <b class="link"> reservar 50% das vagas para alunos que estudaram em escolas públicas.</b> Entre elas, metade é destinada a estudantes com renda familiar bruta mensal de 
				até um salário mínimo e meio por pessoa. Além disso, um percentual das vagas é reservado a estudantes autodeclarados pretos, pardos ou indígenas. </p>
				<p> <b class="SUBTITULO">Diferentemente, </b> as ações afirmativas dependem de cada instituição e não são obrigatórias, e podem acontecer pela reserva de vagas ou por um bônus na nota final do candidato. </p> 
				<p> <b> <i class="link">Atenção:</i> a concorrência é só com quem está inscrito na mesma modalidade que você!</b> </p>
				
				<p> <b class="SUBTITULO"> OBSERVAÇÕES: </b> </p> 

					<p> Para poder participar das listas de espera, como no Sisu tem duas escolhas existem algumas regras, que são as seguintes: </p>
					<p> <b class="link">1° caso </b>  passe na sua primeira opção, você não participa de nenhuma lista de espera.</p>
					<p> <b class="link">2° caso </b>  passe na sua segunda opção e não passe na primeira, você não consegue entrar na lista de espera da sua primeira opção</p>
					<p> <b class="link">3° caso  </b> não passe em nenhuma das suas duas opções, você pode escolher em qual lista de espera você quer participar.</p>

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