package org.dobong.ctrl.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dobong.dao.QnaDAO;
import org.dobong.dto.Qna;

/**
 * Servlet implementation class AnswerInsCtrl
 */
@WebServlet(name = "AnswerIns.do", urlPatterns = { "/AnswerIns.do" })
public class AnswerInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnswerInsCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		Qna qna = new Qna();
		qna.setParno(Integer.parseInt(request.getParameter("parno")));
		qna.setTitle(request.getParameter("title"));
		qna.setContent(request.getParameter("content"));
		qna.setAid(request.getParameter("aid"));
		QnaDAO dao = new QnaDAO();
		int cnt= dao.insAnswer(qna);
		if(cnt>0) {
			response.sendRedirect("/proj1/GetQnaList.jsp");
		}else {
			response.sendRedirect("/qna/aIns.jsp");
		}
	}
}
