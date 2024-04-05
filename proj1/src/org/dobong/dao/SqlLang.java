package org.dobong.dao;

public interface SqlLang {
	String SELECT_ALL_MEMBER = "select * from member order by id";
	String SELECT_MEMBER_BYID = "select * from member where id=?";
	String SELECT_ALL_NOTICE = "select * from notice order by resdate desc";
	String SELECT_NOTICE_BYNO = "select * from notice where no=?";
	String INS_NOTICE = "insert into notice values (nseq.nextval, ? , ?, sysdate, 0)";
	//INS_NOTICE는 oracle에만 해당
	String UPD_NOTICE = "update notice set title=?, content=? were no=?";
	String DEL_NOTICE = "delete from notice where no=?";
	String VIS_UPD_NOTICE = "update notice set visited=visited+1 where no=?";
}