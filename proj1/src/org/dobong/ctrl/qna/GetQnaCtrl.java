package org.dobong.ctrl.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dobong.dao.QnaDAO;
import org.dobong.dto.Qna;

@WebServlet("/GetQna.do")
public class GetQnaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetQnaCtrl() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		QnaDAO dao = new QnaDAO();
		Qna qna = dao.getQna(no);
		System.out.println(qna.toString());
		request.setAttribute("qna", qna);
		String url = "/qna/getQna2.jsp";
		System.out.println(url);
		RequestDispatcher view = request.getRequestDispatcher(url);
		view.forward(request, response);
		
	}

}
