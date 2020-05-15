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

import model.Perfil;
import model.User;

public class UserDAO {

	private Connection conexao;

	public UserDAO() {
		this.conexao = ConnectionFactory.conectar();
	}

	public void insert(User usuario) {
		String inserir = "INSERT INTO Usuario ( nome, senha, email)" + "VALUES(?,?,?)";

		User us = new User();
		try (PreparedStatement pst = conexao.prepareStatement(inserir)) {
			pst.setString(1, usuario.getNome());
			pst.setString(2, usuario.getSenha());
			pst.setString(3, usuario.getEmail());

			us.setNome(usuario.getNome());
			us.setSenha(usuario.getSenha());
			us.setEmail(usuario.getEmail());
			pst.execute();

			// Pega o Id do ultimo usuario inserido no banco
			String sqlId = "SELECT LAST_INSERT_ID()";
			try (PreparedStatement smt = conexao.prepareStatement(sqlId); ResultSet rs = smt.executeQuery();) {
				if (rs.next()) us.setId(rs.getInt(1));
			} catch (SQLException e) { e.printStackTrace(); }
			System.out.println("Insert feito com sucesso");
		} catch (SQLException ex) {
			System.out.println("Houve um erro ao inserir");
			ex.printStackTrace();
		}		
	}

	public void delete(User usuario) {
		String delete = "DELETE FROM Usuario WHERE id = ?";
		try (PreparedStatement pst = conexao.prepareStatement(delete)) {
			pst.setInt(1, usuario.getId());
			pst.execute();
			System.out.println("Usuario excluido");
		} catch (SQLException ex) {
			ex.printStackTrace();
			System.out.println("Falha ao excluir o usuario");
		}
	}

	public void upDate(User user) {
		//, perfil=?
		String update = "UPDATE Usuario SET nome=?, senha=?, email=? WHERE id = ?";

		try (PreparedStatement pst = conexao.prepareStatement(update)) {
			pst.setString(1, user.getNome());
			pst.setString(2, user.getSenha());
			pst.setString(3, user.getEmail());
	//		pst.setString(4, user.getPerfil().name()); 
			pst.setInt(4, user.getId());
			pst.execute();
			System.out.println("Atualizado com sucesso!");
		} catch (SQLException ex) {
			System.out.println("Erro ao atualizar");
			ex.printStackTrace();
		}
	}

	public User select(int id) {
		User user = null;
		// Revisar Enum aqui no Set 
		String consulta = "SELECT id, nome, senha, email, perfil FROM Usuario WHERE id = ?";

		try (PreparedStatement pst = conexao.prepareStatement(consulta)) {
			pst.setInt(1, id);
			ResultSet resultado = pst.executeQuery();

			if (resultado.next()) {
				user = new User();

				int idNoticia = resultado.getInt("id");
				String nome = resultado.getString("nome");
				String email = resultado.getString("email");
				String senha = resultado.getString("senha");
				String perfil = resultado.getString("perfil");

				user.setId(idNoticia);
				user.setNome(nome);
				user.setEmail(email);
				user.setSenha(senha);
				//user.setPerfil(perfil);
				// adicionar o perfil aqui
				System.out.println("Esse é o user: " + user.toString());
			}
			System.out.println("Consulta feita com sucesso");
		} catch (SQLException ex) {
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return user;
	}
	// Revisar Enum aqui no Set 
	public ArrayList<User> selectAll() {
		ArrayList<User> lstNoticia = new ArrayList<User>();
		User user = null;
		String consulta = "SELECT id, nome, senha, email, perfil FROM Usuario";

		try (PreparedStatement pst = conexao.prepareStatement(consulta)) {
			ResultSet resultado = pst.executeQuery();
			while (resultado.next()) {
				user = new User();

				int idNoticia = resultado.getInt("id");
				String nome = resultado.getString("nome");
				String email = resultado.getString("email");
				String senha = resultado.getString("senha");
				String perfil = resultado.getString("perfil");

				user.setId(idNoticia);
				user.setNome(nome);
				user.setEmail(email);
				user.setSenha(senha);
				//user.setPerfil(perfil);
				System.out.println("Esse é o user: " + user.toString());
				lstNoticia.add(user);
			}
			System.out.println("Consulta feita com sucesso");
		} catch (SQLException ex) {
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return lstNoticia;
	}

	public ArrayList<User> selectEmail(User usuario) {
		ArrayList<User> lstNoticia = new ArrayList<User>();
		User user = null;
		String consulta = "SELECT email FROM Usuario WHERE email=?";

		try (PreparedStatement pst = conexao.prepareStatement(consulta)) {
			pst.setString(1, usuario.getEmail());
			ResultSet resultado = pst.executeQuery();
			
			while (resultado.next()) {
				user = new User();
				String email = resultado.getString("email");

				user.setEmail(email);
				System.out.println("Esse é o user: " + user.toString());
				lstNoticia.add(user);
			}
			System.out.println("Consulta feita com sucesso");
		} catch (SQLException ex) {
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return lstNoticia;
	}
	
	public User selectEmail(String emailU) {
		User user = null;
		String consulta = "SELECT id, nome, senha, email FROM Usuario WHERE email=?";

		try (PreparedStatement pst = conexao.prepareStatement(consulta)) {
			pst.setString(1, emailU);
			ResultSet resultado = pst.executeQuery();
			
			if (resultado.next()) {
				user = new User();
				int id = resultado.getInt("id");
				String nome = resultado.getString("nome");
				String senha = resultado.getString("senha");
				String email = resultado.getString("email");
				
				user.setId(id);
				user.setNome(nome);
				user.setSenha(senha);
				user.setEmail(email);
				System.out.println("Esse é o user: " + user.toString());
			}
			System.out.println("Consulta feita com sucesso");
		} catch (SQLException ex) {
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return user;
	}
}