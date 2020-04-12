package dao;

import java.sql.Connection;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import model.Materia;

public class MateriaDAO {

	
	private EntityManagerFactory emf;
	private EntityManager em;
	private Connection conexao;
	
	public MateriaDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
	
	/*public MateriaDAO() {
		emf = Persistence.createEntityManagerFactory("projeto");
		em = emf.createEntityManager();
	}*/
	
	public void insert (Materia mat) {
		em.getTransaction().begin();
		em.merge(mat);
		em.getTransaction().commit();
		emf.close();
	}
	
	public void delete (Materia mat) {
		em.getTransaction().begin();
		Query delete = em.createNamedQuery("DELETE materia FROM materia WHERE id = " + mat.getId());
		delete.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void update (Materia mat) {
		em.getTransaction().begin();
		System.out.println();
		Query update = em.createNamedQuery("UPDATE materia SET nome_materia = " + mat.getNameMateria() + 
											" WHERE id = " + mat.getId());
		update.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void select (Materia mat) {
		em.getTransaction().begin();
		Query select = em.createNamedQuery("SELECT * FROM materia WHERE id = " + mat.getId());
		select.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
}
