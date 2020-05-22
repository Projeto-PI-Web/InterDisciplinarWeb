package controller;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class ResetPassController
 */
@WebServlet("/ResetPass.do")
public class ResetPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetPassController() {
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
		/*PrintWriter out = response.getWriter();
		String to = "";
		String assunto = "";
		String conteudo = "";
		out.println("Testando email, enviando " + to + assunto + conteudo);
		try {
			EmailUtility.sendEmail(to, assunto, conteudo);
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		String email = request.getParameter("email");
		UserService us = new UserService();
		
		User user = new User();
		user = us.selectEmail(email);
		if(user != null) {
			// Estou enviando o email na mensagem apenas para teste, é necessario alterar a String do email para não enviar a informação completa
			String msg = "Um email foi enviado para " + email + " com as instruções para recuperação da senha";
			request.setAttribute("mensagem", msg);
			RequestDispatcher rd = request.getRequestDispatcher("resetpass.jsp");
			rd.forward(request, response);
		}else {
			
			request.setAttribute("erro", "Usuario nao cadastrado");
			RequestDispatcher rd = request.getRequestDispatcher("resetpass.jsp");
			rd.forward(request, response);
		}
		
	}

}
