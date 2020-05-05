package service;

import dao.DisciplinaDAO;
import model.Disciplina;

public class DisciplinaService {

	DisciplinaDAO dao = new DisciplinaDAO();
	
	public int criar(Disciplina disciplina) {
		dao.insert(disciplina);
		return disciplina.getId();
	}
	
	public void atualizar(Disciplina disciplina){
		dao.upDate(disciplina);
	}
	
	public void excluir(Disciplina disciplina){
		dao.delete(disciplina);
	}
	
	public Disciplina carregar(Disciplina disciplina){
		return dao.select(disciplina);
	}
}
