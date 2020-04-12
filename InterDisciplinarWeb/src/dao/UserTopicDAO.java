package dao;

import java.sql.Connection;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.UserDisc;
import model.UserTopic;

public class UserTopicDAO {

	private EntityManagerFactory emf;
	private EntityManager em;
	private Connection conexao;
	
	public UserTopicDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
	
	public void insert (UserTopic userTopic) {
		em.getTransaction().begin();
		em.merge(userTopic);
		em.getTransaction().commit();
		emf.close();
	}
	
	public void delete (UserTopic userTopic) {
		em.getTransaction().begin();
		Query delete = em.createNamedQuery("DELETE materia FROM questao WHERE id = " + userTopic.getId());
		delete.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void update (UserTopic userTopic) {
		em.getTransaction().begin();
		System.out.println();
		Query update = em.createNamedQuery("UPDATE materia SET nome_materia = " + 
											" WHERE id = " + userTopic.getId());
		update.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void select (UserTopic userTopic) {
		em.getTransaction().begin();
		Query select = em.createNamedQuery("SELECT * FROM questao WHERE id = " + userTopic.getId());
		select.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
}
