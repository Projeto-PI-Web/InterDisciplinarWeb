package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.Disciplina;
import model.Topic;

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
	
	
	//SEGUNDA OPÇÃO CRUD

	public void insertDisciplina (Disciplina disciplina) {
		System.out.println("Entrou no insert");
		UserDAO dao = new UserDAO();
		String inserir = "INSERT INTO Topico (id, nome, senha, email)" + "VALUES(?,?,?,?)";
		
		Disciplina dc = new Disciplina(); 
		
		try (PreparedStatement pst = conexao.prepareStatement(inserir)){
			pst.setInt(1, disciplina.getId());
			pst.setString(2, disciplina.getNameMateria());
			
			dc.setId(disciplina.getId());
			dc.setNameMateria(disciplina.getNameMateria());
			
			pst.execute();
			System.out.println("Insert feito com sucesso");
			
		} catch(SQLException ex){ 
			System.out.println("Houve um erro ao inserir");
			ex.printStackTrace();
		}
	}
	
	//Delete
	public void deleteUsuario (String apelido) {
			
		String delete = "DELETE FROM Usuario WHERE apelido = ?";
			
		try (PreparedStatement pst = conexao.prepareStatement(delete)){
			pst.setString(1, apelido);
			pst.execute();
			
			System.out.println("Usuario excluido");
			
		} catch(SQLException ex){
			ex.printStackTrace();
			System.out.println("Falha ao excluir o usuario");
		}
	}

	//Update Email
	public void upDateUsuarioEmail (String campo, String apelido) {		
		String update = "UPDATE Usuario SET email = ? WHERE apelido = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(update)){
			pst.setString(1, campo);
			pst.setString(2, apelido);
			pst.execute();
				
			System.out.println("Atualizado com sucesso!");
		} catch(SQLException ex){
			System.out.println("Erro ao atualizar");
			ex.printStackTrace();
		}
	}
	
	//Update Telefone
	public void upDateUsuarioTelefone (String campo, String apelido) {		
		String update = "UPDATE Usuario SET telefone = ? WHERE apelido = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(update)){
			pst.setString(1, campo);
			pst.setString(2, apelido);
			pst.execute();
			System.out.println("Atualizado com sucesso!");
		} catch(SQLException ex){
			System.out.println("Erro ao atualizar");
			ex.printStackTrace();
		}
	}
	
	//Update Senha
	public void upDateUsuarioSenha (String campo, String apelido) {		
		String update = "UPDATE Usuario SET senha = ? WHERE apelido = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(update)){
			pst.setString(1, campo);
			pst.setString(2, apelido);
			pst.execute();
				
			System.out.println("Atualizado com sucesso!");
		} catch(SQLException ex){
			System.out.println("Erro ao atualizar");
			ex.printStackTrace();
		}
	}
}
