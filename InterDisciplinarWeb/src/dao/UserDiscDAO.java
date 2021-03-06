package dao;

import java.sql.Connection;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.UserDisc;

public class UserDiscDAO {

	private EntityManagerFactory emf;
	private EntityManager em;
	private Connection conexao;
	
	public UserDiscDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
	
	public void insert (UserDisc user) {
		em.getTransaction().begin();
		em.merge(user);
		em.getTransaction().commit();
		emf.close();
	}
	
	public void delete (UserDisc user) {
		em.getTransaction().begin();
		Query delete = em.createNamedQuery("DELETE materia FROM questao WHERE id = " + user.getId());
		delete.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void update (UserDisc user) {
		em.getTransaction().begin();
		System.out.println();
		Query update = em.createNamedQuery("UPDATE materia SET nome_materia = " + 
											" WHERE id = " + user.getId());
		update.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void select (UserDisc user) {
		em.getTransaction().begin();
		Query select = em.createNamedQuery("SELECT * FROM questao WHERE id = " + user.getId());
		select.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
}
