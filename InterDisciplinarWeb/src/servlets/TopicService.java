package servlets;

import dao.TopicDAO;
import model.Topic;

public class TopicService {

	TopicDAO dao = new TopicDAO();
	
	public int criar(Topic topic) {
		dao.insert(topic);
		return topic.getId();
	}
	
	public void atualizar(Topic topic){
		dao.upDate(topic);
	}
	
	public void excluir(Topic topic){
		dao.delete(topic);
	}
	
	public Topic carregar(Topic topic){
		return dao.select(topic);
	}
}
