package org.dobong.ctrl.qna;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dobong.dao.QnaDAO;
import org.dobong.dto.Qna;

@WebServlet("/QuestionIns.do")
public class QuestionInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QuestionInsCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		String aid = (String) session.getAttribute("sid");
		
		Qna qna = new Qna();
		qna.setTitle(request.getParameter("title"));
		qna.setContent(request.getParameter("content"));
		qna.setAid(aid);
		QnaDAO dao = new QnaDAO();
		int cnt = dao.insQuestion(qna);
		ServletContext application = request.getServletContext();
		String home = application.getContextPath();
		if(cnt>0) {
			response.sendRedirect(home+"/GetQnaList.do");
		} else {
			response.sendRedirect(home+"/qna/qIns.jsp");
		}
	}

}