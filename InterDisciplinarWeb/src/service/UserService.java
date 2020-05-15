package service;

import java.util.ArrayList;

import dao.UserDAO;
import model.User;

public class UserService {

	UserDAO dao = new UserDAO();
	public int status;
	
	public int criar(User usuario) {
		status = 0;
		
		for(User user : dao.selectEmail(usuario)) {
			if(!usuario.getEmail().equals(user.getEmail())) {
				System.out.println("Email não existe ainda, pode ser criado");
				status = 1;
			}
			else {
				System.out.println("Esse email já existe, Não pode ser criado");
				status = -1;
			}
		}
		System.out.println("Status: " + status);
		if(status >= 0) dao.insert(usuario);
		return status;
	}
	
	public int login(User usuario, String email, String senha){
		status = 0;
		System.out.println("Usuario que chegou agora: " + usuario.toString());
		User valida = dao.selectEmail(email);
		
		if(valida != null) {
			if(usuario.getEmail().equals(valida.getEmail())) {
				System.out.println("Parece que o email passou hehe");
				if(senha.equals(valida.getSenha())) {
					System.out.println("Chegou na senha, pode passar!");
					status = 1;
				} else {
					System.out.println("Senha incorreta, tratar...");
					status = -1;
				}
			} else {
				System.out.println("Nem o email confere... Verifica de novo");
				status = -1;
			}
		}
		
		if(status > 0) return valida.getId();
		else return -1;
	}
	
	public void atualizar(User usuario){
		dao.upDate(usuario);
	}
	
	public void excluir(User usuario){
		dao.delete(usuario);
	}
	
	public User carregar(User usuario){
		return dao.select(usuario.getId());
	}
	
	public ArrayList<User> carregarTudo(){
		return dao.selectAll();
	}
	
	public ArrayList<User> carregarNomes(User usuario){
		return dao.selectEmail(usuario);
	}
	public User selectEmail(String email) {
		return dao.selectEmail(email);
	}
}
