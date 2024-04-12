package org.dobong.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.dobong.dto.Notice;
import org.dobong.dto.Qna;

public class QnaDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Qna> getQnaList(){
		List<Qna> qnaList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.Connect();
			pstmt = con.prepareStatement(SqlLang.LATEST_QNA);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Qna noti = new Qna(rs.getInt("no"),
						rs.getInt("plevel"),
						rs.getInt("parno"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("resdate"),
						rs.getInt("visited"),
						rs.getString("aid"));
				qnaList.add(noti);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return qnaList;
	}
	
	public Notice getNotice(int no) {
		Notice noti = new Notice();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.Connect();
			pstmt = con.prepareStatement(SqlLang.VIS_UPD_NOTICE);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_NOTICE_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				noti.setNo(rs.getInt("no"));
				noti.setTitle(rs.getString("title"));
				noti.setContent(rs.getString("content"));
				noti.setResdate(rs.getString("resdate"));
				noti.setVisited(rs.getInt("visited"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return noti;
	}
	
	public int insAnswer(Qna qa) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.Connect();
			pstmt = con.prepareStatement(SqlLang.INS_ANSWER);
			pstmt.setString(1, qa.getTitle());
			pstmt.setString(2, qa.getContent());
			pstmt.setString(3, qa.getTitle());
			pstmt.setString(4, qa.getContent());
			cnt = pstmt.executeUpdate();
			
			pstmt = null;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	public int insQuestion(Qna qa) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.Connect();
			pstmt = con.prepareStatement(SqlLang.INS_QUESTION);
			pstmt.setString(1, qa.getTitle());
			pstmt.setString(2, qa.getContent());
			pstmt.setString(3, qa.getTitle());
			cnt = pstmt.executeUpdate();
			
			pstmt = null;
			con = oracle.Connect();
			pstmt = con.prepareStatement(SqlLang.UPD_PARNO_QUESTION);
			
			cnt = cnt+ pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	public int editProQna(Qna qa) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.Connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_QNA_BYNO);
			pstmt.setString(1, qa.getTitle());
			pstmt.setString(2, qa.getContent());
			pstmt.setInt(3, qa.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delNotice(int no){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.Connect();
			pstmt = con.prepareStatement(SqlLang.DEL_NOTICE);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}

	public Notice getNotice2(int no) {
		Notice noti = new Notice();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.Connect();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_NOTICE_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				noti.setNo(rs.getInt("no"));
				noti.setTitle(rs.getString("title"));
				noti.setContent(rs.getString("content"));
				noti.setResdate(rs.getString("resdate"));
				noti.setVisited(rs.getInt("visited"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return noti;
	}
}