package org.dobong.dto;

public class Qna {
	private int no;
	private String plevel;
	private String parno;
	private String content;
	private String resdate;
	private int visited;
	private String aid;
	public Qna() {
		super();
	}
	public Qna(int no, String plevel, String parno, String content, String resdate, int visited, String aid) {
		super();
		this.no = no;
		this.plevel = plevel;
		this.parno = parno;
		this.content = content;
		this.resdate = resdate;
		this.visited = visited;
		this.aid = aid;
	}
	@Override
	public String toString() {
		return "Qna [no=" + no + ", plevel=" + plevel + ", parno=" + parno + ", content=" + content + ", resdate="
				+ resdate + ", visited=" + visited + ", aid=" + aid + "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPlevel() {
		return plevel;
	}
	public void setPlevel(String plevel) {
		this.plevel = plevel;
	}
	public String getParno() {
		return parno;
	}
	public void setParno(String parno) {
		this.parno = parno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
}
