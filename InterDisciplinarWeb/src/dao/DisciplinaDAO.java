package dao;

import java.sql.Connection;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.Disciplina;

public class DisciplinaDAO {

	private EntityManagerFactory emf;
	private EntityManager em;
	private Connection conexao;
	
	public DisciplinaDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
	
	/*public MateriaDAO() {
		emf = Persistence.createEntityManagerFactory("projeto");
		em = emf.createEntityManager();
	}*/
	
	public void insert (Disciplina disc) {
		em.getTransaction().begin();
		em.merge(disc);
		em.getTransaction().commit();
		emf.close();
	}
	
	public void delete (Disciplina disc) {
		em.getTransaction().begin();
		Query delete = em.createNamedQuery("DELETE materia FROM materia WHERE id = " + disc.getId());
		delete.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void update (Disciplina disc) {
		em.getTransaction().begin();
		System.out.println();
		Query update = em.createNamedQuery("UPDATE materia SET nome_materia = " + disc.getNameMateria() + 
											" WHERE id = " + disc.getId());
		update.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void select (Disciplina disc) {
		em.getTransaction().begin();
		Query select = em.createNamedQuery("SELECT * FROM materia WHERE id = " + disc.getId());
		select.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
}
