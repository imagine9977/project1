package org.dobong.dto;

public class Guide {
	private String pcode;
	
	private String pname;
	private String ptype;
	private String paddr;
	private String ptel;
	private String pgps;
	private String pcomm;
	private String premark;
	@Override
	public String toString() {
		return "Guide [pcode=" + pcode + ", pname=" + pname + ", ptype=" + ptype + ", paddr=" + paddr + ", ptel=" + ptel
				+ ", pgps=" + pgps + ", pcomm=" + pcomm + ", premark=" + premark + "]";
	}
	public Guide() {
		super();
	}
	public Guide(String pcode, String pname, String ptype, String paddr, String ptel, String pgps, String pcomm,
			String premark) {
		super();
		this.pcode = pcode;
		this.pname = pname;
		this.ptype = ptype;
		this.paddr = paddr;
		this.ptel = ptel;
		this.pgps = pgps;
		this.pcomm = pcomm;
		this.premark = premark;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getPaddr() {
		return paddr;
	}
	public void setPaddr(String paddr) {
		this.paddr = paddr;
	}
	public String getPtel() {
		return ptel;
	}
	public void setPtel(String ptel) {
		this.ptel = ptel;
	}
	public String getPgps() {
		return pgps;
	}
	public void setPgps(String pgps) {
		this.pgps = pgps;
	}
	public String getPcomm() {
		return pcomm;
	}
	public void setPcomm(String pcomm) {
		this.pcomm = pcomm;
	}
	public String getPremark() {
		return premark;
	}
	public void setPremark(String premark) {
		this.premark = premark;
	}
}
