package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.UserController;
import dao.UserDAO;
import model.User;

@WebServlet("/CadastroUser")
public class CadastroUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CadastroUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	public static void main(String[] args) {
		System.out.println("Main");
		UserDAO pController = new UserDAO();
		User p = new User(-1, "Matheus", "Matheus", "Matheus");
		System.out.println("Pessoa p: " + p);
		pController.insert(p);
	}

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Passou aqui");
		UserDAO pDAO= new UserDAO();
		User p = new User(-1, "Matheus", "Matheus", "Matheus");
		//Test
		
		pDAO.insert(p);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
