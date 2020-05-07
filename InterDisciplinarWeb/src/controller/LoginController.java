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
	private UserService us = new UserService();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("POST DO LOGIN");
		String pEmail = request.getParameter("uname");
		String pSenha = request.getParameter("psw");
		PrintWriter out = response.getWriter();
		
		User usuario = new User();
		usuario.setEmail(pEmail);
		usuario.setSenha(pSenha);
		us.login(usuario, pEmail);
		
		if(us.status > 0) response.sendRedirect("Cursos.html");
		else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Houve um erro, favor contatar um adm.');");
			out.println("location='login.html';");
			out.println("</script>");
		}
	}
}