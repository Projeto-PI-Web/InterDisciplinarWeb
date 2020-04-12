package dao;

import java.sql.Connection;

public class UserDAO {

	private Connection conexao;
	
	public UserDAO () {
		this.conexao = ConnectionFactory.conectar();
	}
}
