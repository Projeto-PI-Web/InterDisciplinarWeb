package dao;

import model.User;

public class TestDAO {

	public static void main(String[] args) {
		System.out.println("UserDAO");
		UserDAO dao = new UserDAO(ConnectionFactory.conectar());
		//User us = new User("0", "Test", "123", "email");
		
		//dao.insert(us);
		//dao.insertApelido(us);
	}
}
