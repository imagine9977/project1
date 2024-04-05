package org.dobong.ctrl.notice;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dobong.dao.NoticeDAO;
import org.dobong.dto.Notice;

/**
 * Servlet implementation class EditProNoticeCtrl
 */
@WebServlet("/EditProNotice.do")
public class EditProNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProNoticeCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html); charset=UTF-8");
		
		Notice noti = new Notice();
		noti.setNo(Integer.parseInt(request.getParameter("no")));
		noti.setTitle(request.getParameter("title"));
		noti.setContent(request.getParameter("content"));
		
		NoticeDAO dao = new NoticeDAO();
		int cnt = dao.editProNotice(noti);
		if(cnt>0) {
			response.sendRedirect("/proj1/NotiList.do");
		}else {
			response.sendRedirect("/proj1/NotiList.do?no="+noti.getNo());
		}
	}

}
