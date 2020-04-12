package dao;

import java.sql.Connection;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.Question;

public class QuestionDAO {

	private EntityManagerFactory emf;
	private EntityManager em;
	private Connection conexao;
	
	public QuestionDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
	
	public void insert (Question mat) {
		em.getTransaction().begin();
		em.merge(mat);
		em.getTransaction().commit();
		emf.close();
	}
	
	public void delete (Question quest) {
		em.getTransaction().begin();
		Query delete = em.createNamedQuery("DELETE materia FROM questao WHERE id = " + quest.getId());
		delete.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void update (Question quest) {
		em.getTransaction().begin();
		System.out.println();
		Query update = em.createNamedQuery("UPDATE materia SET nome_materia = " + quest.getEnunciado() + 
											" WHERE id = " + quest.getId());
		update.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void select (Question quest) {
		em.getTransaction().begin();
		Query select = em.createNamedQuery("SELECT * FROM questao WHERE id = " + quest.getId());
		select.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
}
