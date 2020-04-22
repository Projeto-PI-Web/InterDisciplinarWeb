package servlets;

import dao.TopicDAO;
import model.Topic;

public class TopicService {

	TopicDAO dao = new TopicDAO();
	
	public int criar(Topic topic) {
		dao.insertTopic(topic);
		return topic.getId();
	}
	
	/*public void atualizar(Topic topic){
		dao.atualizar(topic);
	}
	
	public void excluir(int id){
		dao.excluir(id);
	}
	
	public Topic carregar(int id){
		return dao.carregar(id);
	}*/
}
