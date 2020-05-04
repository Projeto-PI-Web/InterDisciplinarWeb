package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public void insert (Question question) {
		UserDAO dao = new UserDAO();
		String inserir = "INSERT INTO Questao (id, nome, senha, email)" + "VALUES(?,?,?,?)";
		
		Question qt = new Question(); 
		
		try (PreparedStatement pst = conexao.prepareStatement(inserir)){
			pst.setInt(1, question.getId());
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
	
	public void delete (Question question) {
		
		String delete = "DELETE FROM Questao WHERE id = ?";
			
		try (PreparedStatement pst = conexao.prepareStatement(delete)){
			pst.setInt(1, question.getId());
			pst.execute();
			System.out.println("Usuario excluido");
		} catch(SQLException ex){
			ex.printStackTrace();
			System.out.println("Falha ao excluir o usuario");
		}
	}

	public void upDate (Question questao) {		
		String update = "UPDATE Usuario SET email=? WHERE id=?";
				
		try (PreparedStatement pst = conexao.prepareStatement(update)){
			pst.setString(1, questao.getAlternativaA());
			pst.setString(2, questao.getAlternativaB());
			pst.setString(3, questao.getAlternativaC());
			pst.setString(4, questao.getAlternativaD());
			pst.setString(5, questao.getAlternativaE());
			pst.setString(5, questao.getAlternativaCorreta());
			pst.setString(5, questao.getPeso());
			pst.setInt(6, questao.getId());
			pst.execute();
			System.out.println("Atualizado com sucesso!");
		} catch(SQLException ex){
			System.out.println("Erro ao atualizar");
			ex.printStackTrace();
		}
	}
	
	public Question select (Question question) {
		Question quest = null;
		String consulta = "SELECT id, titulo, descricao, texto FROM Noticia WHERE id = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			pst.setInt(1, question.getId());
			ResultSet resultado = pst.executeQuery();
			
			if(resultado.next()) {
				quest = new Question();
				
				int idNoticia = resultado.getInt("id");
				String alternativaA = resultado.getString("alternativaA");
				String alternativaB = resultado.getString("alternativaB");
				String alternativaC = resultado.getString("alternativaC");
				String alternativaD = resultado.getString("alternativaD");
				String alternativaE = resultado.getString("alternativaE");
				String alternativaCorreta = resultado.getString("alternativaCorreta");
				String peso = resultado.getString("peso");
				
				quest.setId(idNoticia);
				quest.setAlternativaA(alternativaA);
				quest.setAlternativaB(alternativaB);
				quest.setAlternativaC(alternativaC);
				quest.setAlternativaD(alternativaD);
				quest.setAlternativaE(alternativaE);
				quest.setAlternativaCorreta(alternativaCorreta);
				quest.setPeso(peso);
				System.out.println("Essa é a noticia: " + quest.toString());
			}
			System.out.println("Consulta feita com sucesso");
			
		} catch(SQLException ex) {	
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return quest;
	}
	
	public ArrayList<Question> selectAll () {
		ArrayList<Question> lstNoticia = new ArrayList<Question>();
		Question quest = null;
		String consulta = "SELECT id, titulo, descricao, texto FROM Noticia";
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			ResultSet resultado = pst.executeQuery();
			
			while(resultado.next()) {
				quest = new Question();
				
				int idNoticia = resultado.getInt("id");
				String alternativaA = resultado.getString("alternativaA");
				String alternativaB = resultado.getString("alternativaB");
				String alternativaC = resultado.getString("alternativaC");
				String alternativaD = resultado.getString("alternativaD");
				String alternativaE = resultado.getString("alternativaE");
				String alternativaCorreta = resultado.getString("alternativaCorreta");
				String peso = resultado.getString("peso");
				
				quest.setId(idNoticia);
				quest.setAlternativaA(alternativaA);
				quest.setAlternativaB(alternativaB);
				quest.setAlternativaC(alternativaC);
				quest.setAlternativaD(alternativaD);
				quest.setAlternativaE(alternativaE);
				quest.setAlternativaCorreta(alternativaCorreta);
				quest.setPeso(peso);
				System.out.println("Essa é a noticia: " + quest.toString());
				lstNoticia.add(quest);
			}
			System.out.println("Consulta feita com sucesso");
		} catch(SQLException ex) {	
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return lstNoticia;
	}
}
