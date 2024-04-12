package org.dobong.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//표준 SQL
public interface SqlLang {
	String SELECT_ALL_NOTICE = "select * from notice order by resdate desc";
	String SELECT_NOTICE_BYNO = "select * from notice where no=?";
	String UPD_NOTICE = "update notice set title=?, content=? where no=?";
	String VIS_UPD_NOTICE = "update notice set visited=visited+1 where no=?";
	String DEL_NOTICE = "delete from notice where no=?";
	String INS_NOTICE = "insert into notice values(?,?,?,?,?)";
	
	String SELECT_ALL_MEMBER = "select * from member order by id";
	String SELECT_ONE_MEMBER = "select * from member where id=?";
	String INS_MEMBER = "insert into member values(?,?,?,?,?)";
	String UPD_MEMBER = "update member set pw=?,name=?,email=?,tel=? where id=?";
	String DEL_MEMBER = "delete from member where id=?";
	String SELECT_ALL_QNA = "select * from qna order by parno desc, plevel asc;";
	String LATEST_QNA ="select * from(select no from qna order by no desc) where rownum<=5 ";
	String SELECT_QNA_BYNO = "select * from qna where no =?;";
	String DEL_ANSWER = "delete from qna where no=?";
	String INS_ANSWER = "insert into qna values(qseq.nextval,2,null,?,?,default,?,?)";
	String INS_QUESTION = "insert into qna values(qseq.nextval,1,null,?,?,default,?,?)";
	String UPD_PARNO_QUESTION  =  "update qna set parno=qseq.currval\r\n" + 
			"		    where no = (select * from(select no from qna order by no desc) where rownum<=1 )";
	String VISITED_UPD_QNA = "update qna set ";
	Connection Connect();
	void close(Connection con, PreparedStatement pstmt);
	void close(Connection con, PreparedStatement pstmt, ResultSet rs);
}