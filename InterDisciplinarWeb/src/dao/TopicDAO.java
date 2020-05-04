package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.Topic;

public class TopicDAO {

	private Connection conexao;
	
	public TopicDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
	
	public void insert (Topic topic) {
		System.out.println("Entrou no insert");
		UserDAO dao = new UserDAO();
		String inserir = "INSERT INTO Topico (id, nome, senha, email)" + "VALUES(?,?,?,?)";
		
		Topic tp = new Topic(); 
		
		try (PreparedStatement pst = conexao.prepareStatement(inserir)){
			pst.setInt(1, topic.getId());
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
	
	public void delete (Topic topic) {
			
		String delete = "DELETE FROM Usuario WHERE id = ?";
			
		try (PreparedStatement pst = conexao.prepareStatement(delete)){
			pst.setInt(1, topic.getId());
			pst.execute();
			
			System.out.println("Usuario excluido");
			
		} catch(SQLException ex){
			ex.printStackTrace();
			System.out.println("Falha ao excluir o usuario");
		}
	}

	public void upDate (Topic topic) {		
		String update = "UPDATE Usuario SET email = ? WHERE id = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(update)){
			pst.setString(1, topic.getNameTopic());
			pst.setInt(2, topic.getId());
			pst.execute();
				
			System.out.println("Atualizado com sucesso!");
		} catch(SQLException ex){
			System.out.println("Erro ao atualizar");
			ex.printStackTrace();
		}
	}
	
	public Topic select (Topic topic) {
		Topic top = null;
		String consulta = "SELECT id, nome FROM Topic WHERE id = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			pst.setInt(1, topic.getId());
			ResultSet resultado = pst.executeQuery();
			
			if(resultado.next()) {
				top = new Topic();
				
				int idNoticia = resultado.getInt("id");
				String nomeTopic = resultado.getString("titulo");
				String playlist = resultado.getString("descricao");
				
				top.setId(idNoticia);
				top.setNameTopic(nomeTopic);
				top.setPlayList(playlist);
				System.out.println("Essa é a noticia: " + top.toString());
			}
			System.out.println("Consulta feita com sucesso");
			
		} catch(SQLException ex) {	
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return top;
	}
	
	public ArrayList<Topic> selectAll () {
		ArrayList<Topic> lstNoticia = new ArrayList<Topic>();
		Topic top = null;
		String consulta = "SELECT id, titulo, descricao, texto FROM Noticia";
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			ResultSet resultado = pst.executeQuery();
			
			while(resultado.next()) {
				top = new Topic();
				
				int idNoticia = resultado.getInt("id");
				String nomeTopic = resultado.getString("titulo");
				String playlist = resultado.getString("descricao");
				
				top.setId(idNoticia);
				top.setNameTopic(nomeTopic);
				top.setPlayList(playlist);
				System.out.println("Essa é a noticia: " + top.toString());
				lstNoticia.add(top);
			}
			System.out.println("Consulta feita com sucesso");
		} catch(SQLException ex) {	
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return lstNoticia;
	}
}
