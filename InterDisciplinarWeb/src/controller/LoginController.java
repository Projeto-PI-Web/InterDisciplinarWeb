package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import service.UserService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService cs = new UserService();
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("POST DO LOGIN");
		String pEmail = request.getParameter("uname");
		String pSenha = request.getParameter("psw");
		PrintWriter out = response.getWriter();
		//instanciar o javabean
		
		User usuario = new User();
		usuario.setEmail(pEmail);
		usuario.setSenha(pSenha);
		
		if(pEmail.equals(cs.carregar(usuario).getEmail()) && pSenha.equals(cs.carregar(usuario).getSenha())) {
			out.println("<html><head><title>Cliente Cadastrado</title></head><body>");
			out.println(	"nome: "+usuario.getNome()+"<br>");
			out.println(	"e-mail: "+usuario.getEmail()+"<br>");
			out.println(	"senha: "+usuario.getSenha()+"<br>");
		    out.println("</body></html>");
		} else out.println("NÃO PASSOU");	
		
	}
}