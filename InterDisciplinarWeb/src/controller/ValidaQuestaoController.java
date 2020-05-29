package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Question;
import service.QuestionService;

/**
 * Servlet implementation class ValidaQuestaoController
 */
@WebServlet("/ValidaQuestao.do")
public class ValidaQuestaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidaQuestaoController() {
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
		String resposta = request.getParameter("inlineRadioOptions1");
		int pId = Integer.parseInt(request.getParameter("id")) ;
		QuestionService qs = new QuestionService();
		Question ques = new Question();
		ques.setId(pId);
		ques = qs.carregar(ques);
		String correta = ques.getAlternativaCorreta();
		HttpSession ses = request.getSession();
		RequestDispatcher rd = request.getRequestDispatcher("questoes.jsp");
		if(correta.equals(resposta)) {
			ses.setAttribute("correta" + correta, "text-success");
		}else {
			ses.setAttribute("errada"+ resposta, "text-danger");
			
		}
		rd.forward(request, response);
	}

}
