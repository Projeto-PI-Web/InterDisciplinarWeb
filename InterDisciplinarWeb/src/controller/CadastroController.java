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

//, urlPatterns ="/CadastroController.do"
@WebServlet("/CadastroController.do")
public class CadastroController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		System.out.println("Request: " + request);
		System.out.println("Response: " + response);
		System.out.println("Cadastrar POST");
		
		String pNome = request.getParameter("name");
		String pEmail = request.getParameter("email");
		String pSenha = request.getParameter("senha");
		String cSenha = request.getParameter("cSenha");
		
		PrintWriter out = response.getWriter();
		//instanciar o javabean
		User usuario = new User();
		usuario.setNome(pNome);
		usuario.setEmail(pEmail);
		if(pSenha.equals(cSenha)) usuario.setSenha(pSenha);
		else out.println("As senhas não são igual. Favor verificar novamente");
		
		System.out.println("User: " +usuario);
		
		//instanciar o service
		UserService us = new UserService();
		us.criar(usuario);
		
		System.out.println("Mudando de pag");
		
		request.getRequestDispatcher("index.html").include(request, response);		
	}
}