package org.dobong.ctrl.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dobong.dao.QnaDAO;
import org.dobong.dto.Qna;


@WebServlet("/QuestionIns.do")
public class QuestionInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionInsCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Qna qna = new Qna();
		qna.setTitle(request.getParameter("title"));
		qna.setContent(request.getParameter("content"));
		qna.setAid(request.getParameter("aid"));
		QnaDAO dao = new QnaDAO();
		int cnt= dao.insQuestion(qna);
		if(cnt>0) {
			response.sendRedirect("/proj1/GetQnaList.jsp");
		}else {
			response.sendRedirect("/qna/qIns.jsp");
		}
	}

}
