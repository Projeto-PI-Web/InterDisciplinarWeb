package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Question;
import model.Topic;

public class QuestionDAO {

	private Connection conexao;
	
	public QuestionDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
	
	public void insert (Question question) {
		UserDAO dao = new UserDAO();
		String inserir = "INSERT INTO Questao (id, enunciado, alternativa_correta, peso,"
				+ "alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e,"
				+ "fk_topico)" + "VALUES(?,?,?,?,?,?,?,?,?)";
		
		Question qt = new Question(); 
		
		try (PreparedStatement pst = conexao.prepareStatement(inserir)){
			pst.setInt(1, question.getId());
			pst.setString(2, question.getEnunciado());
			pst.setString(3, question.getAlternativaCorreta());
			pst.setString(4, question.getPeso());
			pst.setString(5, question.getAlternativaA());
			pst.setString(6, question.getAlternativaB());
			pst.setString(7, question.getAlternativaC());
			pst.setString(8, question.getAlternativaD());
			pst.setString(9, question.getAlternativaE());			
			
			qt.setId(question.getId());
			qt.setEnunciado(question.getEnunciado());
			qt.setAlternativaCorreta(question.getAlternativaCorreta());
			qt.setPeso(question.getPeso());
			qt.setAlternativaA(question.getAlternativaA());
			qt.setAlternativaB(question.getAlternativaB());
			qt.setAlternativaC(question.getAlternativaC());
			qt.setAlternativaD(question.getAlternativaD());
			qt.setAlternativaE(question.getAlternativaE());
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
		String update = "UPDATE Usuario SET enunciado=?, SET alternativa_correta=?, SET peso=?," + 
				"SET alternativa_a=?, SET alternativa_b=?, SET alternativa_c=?, SET alternativa_d=?," +
				"SET alternativa_e=?, SET fk_topico=? WHERE id=?";
				
		try (PreparedStatement pst = conexao.prepareStatement(update)){
			pst.setString(1, questao.getEnunciado());
			pst.setString(2, questao.getAlternativaCorreta());
			pst.setString(3, questao.getPeso());
			pst.setString(4, questao.getAlternativaA());
			pst.setString(5, questao.getAlternativaB());
			pst.setString(6, questao.getAlternativaC());
			pst.setString(7, questao.getAlternativaD());
			pst.setString(8, questao.getAlternativaE());
			//pst.setString(9, questao.getTopico()); //Adicionar o Topico aqui
			pst.setInt(10, questao.getId());
			pst.execute();
			System.out.println("Atualizado com sucesso!");
		} catch(SQLException ex){
			System.out.println("Erro ao atualizar");
			ex.printStackTrace();
		}
	}
	
	public Question select (Question question) {
		Question quest = null;
		String consulta = "SELECT id, enunciado, texto_apoio, alternativa_correta, peso," 
				+ "valor_alternativa_a, valor_alternativa_b, valor_alternativa_c, valor_alternativa_d, valor_alternativa_e," 
				+ "fk_topico FROM Questao WHERE id = ?";
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			pst.setInt(1, question.getId());
			ResultSet resultado = pst.executeQuery();
			
			if(resultado.next()) {
				quest = new Question();
				
				int idNoticia = resultado.getInt("id");
				String enunciado = resultado.getString("enunciado");
				String texto_apoio = resultado.getString("texto_apoio");
				String alternativaA = resultado.getString("valor_alternativa_a");
				String alternativaB = resultado.getString("valor_alternativa_b");
				String alternativaC = resultado.getString("valor_alternativa_c");
				String alternativaD = resultado.getString("valor_alternativa_d");
				String alternativaE = resultado.getString("valor_alternativa_e");
				String alternativaCorreta = resultado.getString("alternativa_correta");
				String peso = resultado.getString("peso");
				
				quest.setId(idNoticia);
				quest.setEnunciado(enunciado);
				quest.setAlternativaCorreta(alternativaCorreta);
				quest.setPeso(peso);
				quest.setAlternativaA(alternativaA);
				quest.setAlternativaB(alternativaB);
				quest.setAlternativaC(alternativaC);
				quest.setAlternativaD(alternativaD);
				quest.setAlternativaE(alternativaE);
				quest.setTexto_apoio(texto_apoio);
				System.out.println("Essa � a noticia: " + quest.toString());
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
		String consulta = "SELECT id, enunciado, texto_apoio, alternativa_correta, peso," 
				+ "valor_alternativa_a, valor_alternativa_b, valor_alternativa_c, valor_alternativa_d, valor_alternativa_e," 
				+ "fk_topico FROM Questao"; //Noticia
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			ResultSet resultado = pst.executeQuery();
			
			while(resultado.next()) {
				quest = new Question();
				
				int idNoticia = resultado.getInt("id");
				String enunciado = resultado.getString("enunciado");
				String texto_apoio = resultado.getString("texto_apoio");
				String alternativaA = resultado.getString("valor_alternativa_a");
				String alternativaB = resultado.getString("valor_alternativa_b");
				String alternativaC = resultado.getString("valor_alternativa_c");
				String alternativaD = resultado.getString("valor_alternativa_d");
				String alternativaE = resultado.getString("valor_alternativa_e");
				String alternativaCorreta = resultado.getString("alternativa_correta");
				String peso = resultado.getString("peso");
				
				quest.setId(idNoticia);
				quest.setEnunciado(enunciado);
				quest.setAlternativaCorreta(alternativaCorreta);
				quest.setPeso(peso);
				quest.setAlternativaA(alternativaA);
				quest.setAlternativaB(alternativaB);
				quest.setAlternativaC(alternativaC);
				quest.setAlternativaD(alternativaD);
				quest.setAlternativaE(alternativaE);
				quest.setTexto_apoio(texto_apoio);
				System.out.println("Essa � a noticia: " + quest.toString());
				lstNoticia.add(quest);
			}
			System.out.println("Consulta feita com sucesso");
		} catch(SQLException ex) {	
			ex.printStackTrace();
			System.out.println("Falha na consulta");
		}
		return lstNoticia;
	}
	public ArrayList<Question> selectByTopicId (int id) {
		ArrayList<Question> lstNoticia = new ArrayList<Question>();
		Question quest = null;
		String consulta = "SELECT id, enunciado, texto_apoio, alternativa_correta, peso," 
				+ "valor_alternativa_a, valor_alternativa_b, valor_alternativa_c, valor_alternativa_d, valor_alternativa_e," 
				+ "fk_topico FROM Questao WHERE fk_topico =?"; //Noticia
				
		try (PreparedStatement pst = conexao.prepareStatement(consulta)){
			pst.setInt(1, id);
			ResultSet resultado = pst.executeQuery();
			
			while(resultado.next()) {
				quest = new Question();
				
				int idNoticia = resultado.getInt("id");
				String enunciado = resultado.getString("enunciado");
				String texto_apoio = resultado.getString("texto_apoio");
				String alternativaA = resultado.getString("valor_alternativa_a");
				String alternativaB = resultado.getString("valor_alternativa_b");
				String alternativaC = resultado.getString("valor_alternativa_c");
				String alternativaD = resultado.getString("valor_alternativa_d");
				String alternativaE = resultado.getString("valor_alternativa_e");
				String alternativaCorreta = resultado.getString("alternativa_correta");
				String peso = resultado.getString("peso");
				
				quest.setId(idNoticia);
				quest.setEnunciado(enunciado);
				quest.setAlternativaCorreta(alternativaCorreta);
				quest.setPeso(peso);
				quest.setAlternativaA(alternativaA);
				quest.setAlternativaB(alternativaB);
				quest.setAlternativaC(alternativaC);
				quest.setAlternativaD(alternativaD);
				quest.setAlternativaE(alternativaE);
				quest.setTexto_apoio(texto_apoio);
				System.out.println("Essa � a noticia: " + quest.toString());
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