package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.Topic;
import model.User;

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
	
	//SEGUNDA OPÇÃO CRUD
	
	public void insertTopic (Topic topic) {
		System.out.println("Entrou no insert");
		UserDAO dao = new UserDAO();
		String inserir = "INSERT INTO Topico (id, nome, senha, email)" + "VALUES(?,?,?,?)";
		
		Topic tp = new Topic(); 
		
		try (PreparedStatement pst = conexao.prepareStatement(inserir)){
			pst.setString(1, topic.getId());
			pst.setString(2, topic.getNameTopic());
			pst.setString(3, topic.getPlayList());
			
			tp.setId(topic.getId());
			tp.setNameTopic(topic.getNameTopic());
			tp.setPlayList(topic.getPlayList());
			
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
