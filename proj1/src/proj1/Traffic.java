package proj1;

public class Traffic {
	private String ttype;
	private int no;
	private String route;
	private String comment;
	public String getTtype() {
		return ttype;
	}
	public void setTtype(String ttype) {
		this.ttype = ttype;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return "Traffic [ttype=" + ttype + ", no=" + no + ", route=" + route + ", comment=" + comment + "]";
	}
	public Traffic(String ttype, int no, String route, String comment) {
		super();
		this.ttype = ttype;
		this.no = no;
		this.route = route;
		this.comment = comment;
	}
	public Traffic() {
		super();
	}
	
	
}
