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
 * Servlet implementation class CadastroController
 */
@WebServlet("/CadastroController.do")
public class CadastroController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService us = new UserService();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		System.out.println("Cadastrar POST");
		
		PrintWriter out = response.getWriter();
		String pNome = request.getParameter("name");
		String pEmail = request.getParameter("email");
		String pSenha = request.getParameter("senha");
		String cSenha = request.getParameter("cSenha");
		
		User usuario = new User();
		
		if(!pNome.equals(null) || !pNome.equals(" ")) usuario.setNome(pNome);
		if(!pEmail.equals(null) || !pEmail.equals(" ")) usuario.setEmail(pEmail);
		if(pSenha.equals(cSenha)) {
			usuario.setSenha(pSenha);
			us.criar(usuario);
		} else System.out.println("Senhas não se coincidem");
		
		if(us.status > 0 ) out.println("PASSOU");
		else out.println("NÃO PASSOU");
		
		request.getRequestDispatcher("index.html");		
	}
}