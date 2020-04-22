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
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
		//String pNome = request.getParameter("nome");
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String pNome = request.getParameter("nome");
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
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Cliente Cadastrado</title></head><body>");
		out.println(	"id: "+usuario.getId()+"<br>");
		out.println(	"nome: "+usuario.getNome()+"<br>");
		out.println(	"e-mail: "+usuario.getEmail()+"<br>");
		out.println(	"senha: "+usuario.getSenha()+"<br>");
	    out.println("</body></html>");*/
	}
}