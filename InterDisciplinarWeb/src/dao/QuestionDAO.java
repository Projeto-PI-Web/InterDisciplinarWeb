package dao;

import java.sql.Connection;

public class QuestionDAO {

	private Connection conexao;
	
	public QuestionDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
}
