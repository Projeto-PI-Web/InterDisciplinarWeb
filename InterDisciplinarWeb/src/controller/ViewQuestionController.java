package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.QuestionDAO;
import model.Question;

/**
 * Servlet implementation class ViewQuestionController
 */
@WebServlet("/ViewQuestion.do")
public class ViewQuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewQuestionController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String topicoparam = request.getParameter("topico");
		String atributo = topicoparam;
		int topico = -1;
		RequestDispatcher view = request.getRequestDispatcher("questoes.jsp");
		HttpSession ses = request.getSession();
		
		Map<String, Integer> topicos = new HashMap<String, Integer>();
		topicos.put("histgeral", 15);
		topicos.put("matbas", 26);
		topicos.put("agriculturaambiente", 1);
		
		for(String st : topicos.keySet()) {
			if(st.equals(topicoparam)) {
				topico = topicos.get(st);
			}
		}

		QuestionDAO qDAO = new QuestionDAO();
		List<Question> ques = new ArrayList<>();


		ques = qDAO.selectByTopicId(topico);
		if (ques.size() > 0) {

			ses.setAttribute("questoes", ques);
		} else {
			ses.setAttribute("erroQuestao"+atributo, "Não há questões para esse tópico");
		}
		view.forward(request, response);
	}

}
