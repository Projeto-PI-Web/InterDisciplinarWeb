package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import model.Disciplina;
import model.Topic;
import model.User;

public class DisciplinaDAO {

	private EntityManagerFactory emf;
	private EntityManager em;
	private Connection conexao;
	
	public DisciplinaDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
	
	public void insert (Disciplina disciplina) {
		System.out.println("Entrou no insert");
		UserDAO dao = new UserDAO();
		String inserir = "INSERT INTO Disciplina (id, nome, senha, email)" + "VALUES(?,?,?,?)";
		
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
	
	public void delete (Disciplina disciplina) {
			
		String delete = "DELETE FROM Disciplina WHERE id = ?";
			
		try (PreparedStatement pst = conexao.prepareStatement(delete)){
			pst.setInt(1, disciplina.getId());
			pst.execute();
			
			System.out.println("Usuario excluido");
			
		} catch(SQLException ex){
			ex.printStackTrace();
			System.out.println("Falha ao excluir o usuario");
		}
	}

	public void upDate (Disciplina disciplina) {		
		String update = "UPDATE Usuario SET nome = ? WHERE id = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(update)){
			pst.setString(1, disciplina.getNameMateria());
			pst.setInt(2, disciplina.getId());
			pst.execute();
				
			System.out.println("Atualizado com sucesso!");
		} catch(SQLException ex){
			System.out.println("Erro ao atualizar");
			ex.printStackTrace();
		}
	}
	
	public Disciplina select (Disciplina disciplina) {
		Disciplina disc = null;
		String consulta = "SELECT id, nome FROM Disciplina WHERE id = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			pst.setInt(1, disciplina.getId());
			ResultSet resultado = pst.executeQuery();
			
			if(resultado.next()) {
				disc = new Disciplina();
				
				int idNoticia = resultado.getInt("id");
				String nomeMateria = resultado.getString("nomeMateria");
				
				disc.setId(idNoticia);
				disc.setNameMateria(nomeMateria);
				System.out.println("Essa é a noticia: " + disc.toString());
			}
			System.out.println("Consulta feita com sucesso");
			
		} catch(SQLException ex) {	
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return disc;
	}
	
	public ArrayList<Disciplina> selectAll () {
		ArrayList<Disciplina> lstNoticia = new ArrayList<Disciplina>();
		Disciplina disc = null;
		String consulta = "SELECT id, titulo, descricao, texto FROM Noticia";
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			ResultSet resultado = pst.executeQuery();
			
			while(resultado.next()) {
				disc = new Disciplina();
				
				int idNoticia = resultado.getInt("id");
				String nomeMateria = resultado.getString("nomeMateria");
				
				disc.setId(idNoticia);
				disc.setNameMateria(nomeMateria);
				System.out.println("Essa é a noticia: " + disc.toString());
				lstNoticia.add(disc);
			}
			System.out.println("Consulta feita com sucesso");
		} catch(SQLException ex) {	
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return lstNoticia;
	}
}
