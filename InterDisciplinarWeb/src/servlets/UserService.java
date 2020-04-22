package servlets;

import dao.UserDAO;
import model.User;

public class UserService {

	UserDAO dao = new UserDAO();
	
	public int criar(User usuario) {
		dao.insertUser(usuario);
		return usuario.getId();
	}
	
	/*public void atualizar(User usuario){
		dao.atualizar(disciplina);
	}
	
	public void excluir(int id){
		dao.excluir(id);
	}
	
	public User carregar(int id){
		return dao.carregar(id);
	}*/
}
