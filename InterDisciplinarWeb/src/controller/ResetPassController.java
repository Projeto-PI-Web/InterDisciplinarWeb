package controller;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import service.UserService;

/**
 * Servlet implementation class ResetPassController
 */
@WebServlet("/ResetPass.do")
public class ResetPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ResetPassController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		UserService us = new UserService();
		
		User user = new User();
		user = us.selectEmail(email);
		if(user != null) {
			Calendar cal = Calendar.getInstance();
			String token = user.getNome() + "" + cal.getTimeInMillis() + "" + user.getEmail();
			user.setToken(token);
			us.setToken(user);
			
			user = us.selectEmail(email);
			String msg = "Um email foi enviado para o e-mail cadastrado com as instruções para recuperação da senha";
			request.setAttribute("token", user.getToken());
			request.setAttribute("mensagem", msg);
			request.setAttribute("usuario", user);
			RequestDispatcher rd = request.getRequestDispatcher("EmailController");
			rd.forward(request, response);
		}else {
			request.setAttribute("erro", "Usuario nao cadastrado");
			RequestDispatcher rd = request.getRequestDispatcher("resetpass.jsp");
			rd.forward(request, response);
		}
	}

}
