package dao;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.User;

public class UserDAO {

	private EntityManagerFactory emf;
	private EntityManager em;
	private Connection conexao;
	
	public UserDAO() {}
	
	public UserDAO (Connection conexao) {
		this.conexao = conexao;
	}
	
	public void insert (User user) {
		em.getTransaction().begin();
		em.merge(user);
		em.getTransaction().commit();
		emf.close();
	}
	
	public void delete (User user) {
		em.getTransaction().begin();
		Query delete = em.createNamedQuery("DELETE materia FROM questao WHERE id = " + user.getId());
		delete.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void update (User user) {
		em.getTransaction().begin();
		System.out.println();
		Query update = em.createNamedQuery("UPDATE materia SET nome_materia = " + user.getSenha() + 
											" WHERE id = " + user.getId());
		update.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	public void select (User user) {
		em.getTransaction().begin();
		Query select = em.createNamedQuery("SELECT * FROM questao WHERE id = " + user.getId());
		select.executeUpdate();
		em.getTransaction().commit();
		emf.close();
	}
	
	
	//CASO USANDO O PERSISTENCE NÃO DE CERTO, SEGUNDO MODO DE FAZER O CRUD
	
	
	public void insertUser (User usuario) {
		System.out.println("Entrou no insert");
		UserDAO dao = new UserDAO();
		String inserir = "INSERT INTO Usuario (id, nome, senha, email)" + "VALUES(?,?,?,?)";
		
		User us = new User(); 
		
		try (PreparedStatement pst = conexao.prepareStatement(inserir)){
			pst.setString(1, usuario.getId());
			pst.setString(2, usuario.getNome());
			pst.setString(3, usuario.getSenha());
			pst.setString(4, usuario.getEmail());
			
			us.setId(usuario.getId());
			us.setNome(usuario.getNome());
			us.setSenha(usuario.getSenha());
			us.setEmail(usuario.getEmail());
			
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
