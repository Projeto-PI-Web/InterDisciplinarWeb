package dao;

import java.sql.Connection;

public class TopicDAO {

	private Connection conexao;
	
	public TopicDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
}
