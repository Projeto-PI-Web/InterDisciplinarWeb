package dao;

import java.sql.Connection;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.Topic;

public class TopicDAO {

	private EntityManagerFactory emf;
	private EntityManager em;
	private Connection conexao;
	
	public TopicDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
	
	public void insert (Topic topic) {
		em.getTransaction().begin();
		em.merge(topic);
		em.getTransaction().commit();
		emf.close();
	}
	
	public void delete (Topic topic) {
		em.getTransaction().begin();
		Query delete = em.createNamedQuery("DELETE materia FROM questao WHERE id = " + topic.getId());
		delete.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void update (Topic topic) {
		em.getTransaction().begin();
		System.out.println();
		Query update = em.createNamedQuery("UPDATE materia SET nome_materia = "  + 
											" WHERE id = " + topic.getId());
		update.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void select (Topic topic) {
		em.getTransaction().begin();
		Query select = em.createNamedQuery("SELECT * FROM questao WHERE id = " + topic.getId());
		select.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
}
