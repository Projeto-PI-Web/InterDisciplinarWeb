package servlets;

import dao.UserDAO;
import model.User;

public class UserService {

	UserDAO dao = new UserDAO();
	
	public int criar(User usuario) {
		dao.insert(usuario);
		return usuario.getId();
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
}
