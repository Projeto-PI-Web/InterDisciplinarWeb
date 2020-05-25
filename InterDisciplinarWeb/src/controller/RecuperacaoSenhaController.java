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
 * Servlet implementation class RecuperacaoSenhaController
 */
@WebServlet("/RecuperacaoSenha.do")
public class RecuperacaoSenhaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecuperacaoSenhaController() {
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
		String Senha = request.getParameter("senha");
		String cSenha = request.getParameter("csenha");
		String token = request.getParameter("token");
		UserService us;
		User usuario;
		System.out.println(request.getParameter("usuario"));
		if(Senha.equals(cSenha) && Senha.length() > 0 && cSenha.length() > 0) {
			//PrintWriter out = response.getWriter();
			//out.println("Passou");
			us = new UserService();
			usuario = new User();
			usuario = us.validaToken(token);
			usuario.setSenha(Senha);
			usuario.setToken(null);
			us.atualizar(usuario);
			
			
			request.setAttribute("style","display: none");
			request.setAttribute("mensagemSenha", "Senha atualizada com sucesso!");
			RequestDispatcher rd = request.getRequestDispatcher("recuperacaosenha.jsp");
			rd.forward(request, response);
			
		}else {
			request.setAttribute("erroValida", "As senhas não conferem");
			String path = "ValidaToken.do?token=" + token;
			System.out.println(path);
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}
		
	}

}
