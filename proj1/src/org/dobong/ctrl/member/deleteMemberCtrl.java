package org.dobong.ctrl.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dobong.dao.MemberDAO;
import org.dobong.dto.Member;


@WebServlet("/deleteMember.do")
public class deleteMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteMemberCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");	


		String id = request.getParameter("id");
		MemberDAO dao = new MemberDAO();
		int cnt = dao.memberOut(id);
		
		HttpSession session = request.getSession(); 
		
		if(cnt>0) {
			session.invalidate();
			response.sendRedirect("proj1");

		}else {
			response.sendRedirect("EditMember.do?id="+id);
		}
		}


}
