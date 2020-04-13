package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.Question;
import model.Topic;

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
	
	
	//SEGUNDA OPÇÃO CRUD

	public void insertQuestion (Question question) {
		
		UserDAO dao = new UserDAO();
		String inserir = "INSERT INTO Questao (id, nome, senha, email)" + "VALUES(?,?,?,?)";
		
		Question qt = new Question(); 
		
		try (PreparedStatement pst = conexao.prepareStatement(inserir)){
			pst.setString(1, question.getId());
			pst.setString(2, question.getAlternativaA());
			pst.setString(3, question.getAlternativaB());
			pst.setString(4, question.getAlternativaC());
			pst.setString(5, question.getAlternativaD());
			pst.setString(6, question.getAlternativaE());
			pst.setString(7, question.getAlternativaCorreta());
			pst.setString(8, question.getEnunciado());
			pst.setString(9, question.getPeso());
			
			qt.setId(question.getId());
			qt.setAlternativaA(question.getAlternativaA());
			qt.setAlternativaB(question.getAlternativaB());
			qt.setAlternativaC(question.getAlternativaC());
			qt.setAlternativaD(question.getAlternativaD());
			qt.setAlternativaE(question.getAlternativaE());
			qt.setAlternativaCorreta(question.getAlternativaCorreta());
			qt.setEnunciado(question.getEnunciado());
			qt.setPeso(question.getPeso());
			
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
