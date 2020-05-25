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
 * Servlet implementation class UpdateUserController
 */
@WebServlet("/UpdateUser.do")
public class UpdateUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserController() {
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
		
		PrintWriter out = response.getWriter();
		int pId = Integer.parseInt(request.getParameter("id"));
		String cNome = request.getParameter("nome");
		String pSenha = request.getParameter("senha");
		String cSenha = request.getParameter("csenha");
		String cEmail = request.getParameter("email");
		
		if(cSenha.equals(pSenha)) {
			
			if(cSenha == "" && pSenha == "") {
				
				User usuario = new User();
				usuario.setId(pId);
				usuario.setNome(cNome);
				usuario.setEmail(cEmail);
				//usuario.setSenha(usuario.getSenha());
				
				UserService us = new UserService();
				us.atualizarUser(usuario);
				
				HttpSession ses = request.getSession();
				request.setAttribute("usuario", usuario);
				ses.setAttribute("usuario", usuario);
				RequestDispatcher rd = request.getRequestDispatcher("Cursos.jsp");
				rd.forward(request, response);
			}
			else {
				User usuario = new User();
				usuario.setId(pId);
				usuario.setNome(cNome);
				usuario.setEmail(cEmail);
				usuario.setSenha(pSenha);
				
				UserService us = new UserService();
				us.atualizar(usuario);
				
				HttpSession ses = request.getSession();
				request.setAttribute("usuario", usuario);
				ses.setAttribute("usuario", usuario);
				RequestDispatcher rd = request.getRequestDispatcher("Cursos.jsp");
				rd.forward(request, response);
			
			}
			
		}	
		else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('As senhas não são iguais.');");
			out.println("location='Perfil.jsp';");
			out.println("</script>");
		}
	}

}
