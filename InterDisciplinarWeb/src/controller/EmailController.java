package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import service.EmailUtility;
import service.UserService;

/**
 * Servlet implementation class EmailController
 */
@WebServlet("/EmailController")
public class EmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User usuario = (User) request.getAttribute("usuario");
		String email = request.getParameter("email");
		String token = request.getParameter("token");

		String to = email;
		String assunto = "Recuperação de senha";
		String path = "<a href=http://localhost:8090/InterDisciplinarWeb/ValidaToken.do?token=" + usuario.getToken()+ ">Clique aqui!</a>";
		String conteudo = "Acesse o link para recuperar sua senha: " + path;
		try {
			EmailUtility.sendEmail(to, assunto, conteudo);
			RequestDispatcher rd = request.getRequestDispatcher("resetpass.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			//Adicionar forward da pagina de erro
		}
		
	}

}
