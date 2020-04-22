package servlets;

import dao.QuestionDAO;
import model.Question;

public class QuestionService {

	QuestionDAO dao = new QuestionDAO();
	
	public int criar(Question question) {
		dao.insertQuestion(question);
		return question.getId();
	}
	
	/*public void atualizar(Question question){
		dao.atualizar(question);
	}
	
	public void excluir(int id){
		dao.excluir(id);
	}
	
	public Question carregar(int id){
		return dao.carregar(id);
	}*/
}
