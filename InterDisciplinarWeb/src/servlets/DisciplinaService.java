package servlets;

import dao.DisciplinaDAO;
import model.Disciplina;

public class DisciplinaService {

	DisciplinaDAO dao = new DisciplinaDAO();
	
	public int criar(Disciplina disciplina) {
		dao.insertDisciplina(disciplina);
		return disciplina.getId();
	}
	
	/*public void atualizar(Disciplina disciplina){
		dao.atualizar(disciplina);
	}
	
	public void excluir(int id){
		dao.excluir(id);
	}
	
	public Disciplina carregar(int id){
		return dao.carregar(id);
	}*/
}
