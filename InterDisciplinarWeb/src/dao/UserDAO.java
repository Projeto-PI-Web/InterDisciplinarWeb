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

	private Connection conexao;
	
	public UserDAO() {}
	
	public UserDAO (Connection conexao) {
		this.conexao = conexao;
	}
	
	public void insert (User usuario) {
		System.out.println("Entrou no insert");
		UserDAO dao = new UserDAO();
		String inserir = "INSERT INTO Usuario (id, nome, senha, email, perfil)" + "VALUES(?,?,?,?,?)";
		
		User us = new User(); 
		
		try (PreparedStatement pst = conexao.prepareStatement(inserir)){
			pst.setInt(1, usuario.getId());
			pst.setString(2, usuario.getNome());
			pst.setString(3, usuario.getSenha());
			pst.setString(4, usuario.getEmail());
			//Acrescentar o perfil aqui
			
			us.setId(usuario.getId());
			us.setNome(usuario.getNome());
			us.setSenha(usuario.getSenha());
			us.setEmail(usuario.getEmail());
			//Acrescentar o perfil aqui
			
			pst.execute();
			System.out.println("Insert feito com sucesso");
			
		} catch(SQLException ex){ 
			System.out.println("Houve um erro ao inserir");
			ex.printStackTrace();
		}
	}
	
	public void delete (User usuario) {
		String delete = "DELETE FROM Usuario WHERE id = ?";
			
		try (PreparedStatement pst = conexao.prepareStatement(delete)){
			pst.setInt(1, usuario.getId());
			pst.execute();
			System.out.println("Usuario excluido");
		} catch(SQLException ex){
			ex.printStackTrace();
			System.out.println("Falha ao excluir o usuario");
		}
	}

	public void upDate (User user) {		
		String update = "UPDATE Usuario SET nome=?, SET senha=?, SET email=? , SET perfil=? WHERE id = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(update)){
			pst.setString(1, user.getNome());
			pst.setString(2, user.getSenha());
			pst.setString(3, user.getEmail());
			//pst.setString(4, user.getPerfil()); //Adicionar o ENUM AQUI
			pst.setInt(5, user.getId());
			pst.execute();
			System.out.println("Atualizado com sucesso!");
		} catch(SQLException ex){
			System.out.println("Erro ao atualizar");
			ex.printStackTrace();
		}
	}
	
	public User select (int id) {
		User user = null;
		String consulta = "SELECT id, nome, senha, email, perfil FROM Usuario WHERE id = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			pst.setInt(1, id);
			ResultSet resultado = pst.executeQuery();
			
			if(resultado.next()) {
				user = new User();
				
				int idNoticia = resultado.getInt("id");
				String nome = resultado.getString("nome");
				String email = resultado.getString("email");
				String senha = resultado.getString("senha");
				//String perfil = resultado.getString("perfil");
				
				user.setId(idNoticia);
				user.setNome(nome);
				user.setEmail(email);
				user.setSenha(senha);
				//adicionar o perfil aqui
				System.out.println("Essa é a noticia: " + user.toString());
			}
			System.out.println("Consulta feita com sucesso");
		} catch(SQLException ex) {	
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return user;
	}
	
	public ArrayList<User> selectAll () {
		ArrayList<User> lstNoticia = new ArrayList<User>();
		User user = null;
		String consulta = "SELECT id, nome, senha, email, perfil FROM Noticia";
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			ResultSet resultado = pst.executeQuery();
			
			while(resultado.next()) {
				user = new User();
				
				int idNoticia = resultado.getInt("id");
				String nome = resultado.getString("nome");
				String email = resultado.getString("email");
				String senha = resultado.getString("senha");
				//String perfil = resultado.getString("perfil");
				
				user.setId(idNoticia);
				user.setNome(nome);
				user.setEmail(email);
				user.setSenha(senha);
				//adicionar o perfil aqui
				System.out.println("Essa é a noticia: " + user.toString());
				lstNoticia.add(user);
			}
			System.out.println("Consulta feita com sucesso");
		} catch(SQLException ex) {	
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return lstNoticia;
	}
}