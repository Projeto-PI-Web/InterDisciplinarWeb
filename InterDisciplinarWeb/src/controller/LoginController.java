package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.QuestionDAO;
import model.Question;
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
		QuestionDAO qDAO = new QuestionDAO();
		
		List<Question> ques = new ArrayList();
		ques = qDAO.selectAll();
		
		/*Comentei os dados dos parametros pois nao creio que n�o precisa montar o Usuario novamente se
		/usar o metodo selectEmail que devolve o Usuario com todas as informa�oes j�*/
		User usuario = new User();
		usuario.setEmail(pEmail);
		usuario.setSenha(pSenha);
		us.login(usuario);
		
		if(us.status >= 0) {
			HttpSession ses = request.getSession();
			RequestDispatcher view = request.getRequestDispatcher("Cursos.jsp");
			ses.setAttribute("usuario", usuario);
			//request.setAttribute("usuario", usuario);
			ses.setAttribute("questoes", ques);
			view.forward(request, response);
		} else {
			System.out.println("N�o passou no Login");
			request.setAttribute("erroLogin", "Usu�rio ou senha inv�lidos");
			RequestDispatcher view = request.getRequestDispatcher("login.jsp");
			view.forward(request, response);
		}
	}
}