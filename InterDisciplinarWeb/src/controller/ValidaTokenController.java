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
import service.UserService;

/**
 * Servlet implementation class ValidaTokenController
 */
@WebServlet("/ValidaToken.do")
public class ValidaTokenController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidaTokenController() {
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
		UserService us = new UserService();
		User usuario;
		String token = request.getParameter("token");
		PrintWriter out = response.getWriter();
		usuario = us.validaToken(token);
		if(usuario != null) {
			
			request.setAttribute("usuario", usuario);
			RequestDispatcher rd = request.getRequestDispatcher("recuperacaosenha.jsp");
			rd.forward(request, response);
			
		}else {
			request.setAttribute("tokenInvalido", "Link de recuperação de senha expirado ou inválido, por favor realize o procedimento novamente");
			request.setAttribute("style", "display: none");
			RequestDispatcher rd = request.getRequestDispatcher("resetpass.jsp");
			rd.forward(request, response);
			
		}
	}

}
