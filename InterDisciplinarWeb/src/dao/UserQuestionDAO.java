package dao;

import java.sql.Connection;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.UserQuestion;

public class UserQuestionDAO {

	private EntityManagerFactory emf;
	private EntityManager em;
	private Connection conexao;
	
	public UserQuestionDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
	
	public void insert (UserQuestion userQuestion) {
		em.getTransaction().begin();
		em.merge(userQuestion);
		em.getTransaction().commit();
		emf.close();
	}
	
	public void delete (UserQuestion userQuestion) {
		em.getTransaction().begin();
		Query delete = em.createNamedQuery("DELETE materia FROM questao WHERE id = " + userQuestion.getId());
		delete.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void update (UserQuestion userQuestion) {
		em.getTransaction().begin();
		System.out.println();
		Query update = em.createNamedQuery("UPDATE materia SET nome_materia = " + 
											" WHERE id = " + userQuestion.getId());
		update.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void select (UserQuestion userQuestion) {
		em.getTransaction().begin();
		Query select = em.createNamedQuery("SELECT * FROM questao WHERE id = " + userQuestion.getId());
		select.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
}
