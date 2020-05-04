package servlets;

import dao.QuestionDAO;
import model.Question;

public class QuestionService {

	QuestionDAO dao = new QuestionDAO();
	
	public int criar(Question question) {
		dao.insert(question);
		return question.getId();
	}
	
	public void atualizar(Question question){
		dao.upDate(question);
	}
	
	public void excluir(Question question){
		dao.delete(question);
	}
	
	public Question carregar(Question question){
		return dao.select(question);
	}
}
