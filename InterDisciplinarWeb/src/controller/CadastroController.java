package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import servlets.UserService;

/**
 * Servlet implementation class CadastroController
 */
@WebServlet("/CadastroController.do")
public class CadastroController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String pNome = request.getParameter("nome");
		String pEmail = request.getParameter("email");
		String pSenha = request.getParameter("senha");
		
		//instanciar o javabean
		User usuario = new User();
		//usuario.setNome(pNome);
		usuario.setEmail(pEmail);
		usuario.setEmail(pSenha);
		
		//instanciar o service
		UserService cs = new UserService();
		//cs.criar(usuario);
		//cliente = cs.carregar(cliente.getId()); USAR ESSE APOS MODIFICACAO		
	}
}