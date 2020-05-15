<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#00909e">
        	<div class="container"> 
        		<a class="navbar-brand" href=""> NOMESITE </a>
       		 		<button class="navbar-toggler"  type="submit" onclick="window.location.href = 'index.html';" data-toggles="collapse" data-target="#navbarSite">
        				<span class="navbar-toggler-icon"> </span>
        	 		</button>
       			 <div class="collapse navbar-collapse" id="navbarSite">
        			<ul class="navbar-nav mr-auto">
        				<li class="navbar-item">
        					<a class="nav-link" href="Cursos.jsp" ><b> Aulas  </b> </a>
        				</li>
             			<li class="navbar-item">
        					<a class="nav-link"  href="questoes.jsp"><b> Questões</b> </a>
        				</li>
        				</li>
            			<li class="navbar-item">
        					<a class="nav-link" href="conteudo.jsp"> <b>Conteúdo para Estudo</b> </a>
       					 </li>
                 		<li class="navbar-item">
        					<a class="nav-link" href="dicas.jsp"><b> Dicas Enem</b> </a>
       			 		</li>
        			</ul>
                    <ul class="navbar-nav ml-auto">
                    	  <li class="navbar-item">
        					<a class="nav-link" href="Perfil.jsp"><b> Perfil</b> </a>
						</li>
                         <li class="navbar-item">
        					<a class="nav-link" data-target="#myModal" data-toggle="modal" href="#"><b> Sair</b> </a>
						</li>
                    </ul>
        		</div>
       	 </nav>
       	 
       	 
       	 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
        </button>
        <h6 class="modal-title" id="myModalLabel">Atenção</h6>
      </div>
      <div class="modal-body">
        Deseja mesmo sair ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
        <a class="btn btn-primary" href="index.html">Sim</a>
      </div>
    </div>
  </div>
</div>