package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	//	int pId = .getId();
		PrintWriter out = response.getWriter();
		
		
		/*Comentei os dados dos parametros pois nao creio que não precisa montar o Usuario novamente se
		/usar o metodo selectEmail que devolve o Usuario com todas as informaçoes já*/
		User usuario = new User();
		usuario = us.selectEmail(pEmail);
	//	usuario.setId(pId);
	//	usuario.setEmail(pEmail);
	//	usuario.setSenha(pSenha);
		us.login(usuario, pEmail,pSenha);
		
		HttpSession ses = request.getSession();
		ses.setAttribute("usuario", usuario);
		request.setAttribute("usuario", usuario);
		RequestDispatcher view = request.getRequestDispatcher("Cursos.jsp");
		
		//request.getRequestDispatcher("Cursos.jsp").include(request,  response);
		if(us.status > 0) view.forward(request, response);
		else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Houve um erro, favor contatar um adm.');");
			out.println("location='login.html';");
			out.println("</script>");
		}
	}
}