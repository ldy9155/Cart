package sist.bean;

public class MemberBean {
	
	private String mid;
	private String mpw;
	private String mname;
	private String mphone;
	private String mbirth;
	private String memail;
	private int mpoint;
	private String mgrade;
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMbirth() {
		return mbirth;
	}
	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public int getMpoint() {
		return mpoint;
	}
	public void setMpoint(int mpoint) {
		this.mpoint = mpoint;
	}
	public String getMgrade() {
		return mgrade;
	}
	public void setMgrade(String mgrade) {
		this.mgrade = mgrade;
	}
	
	public MemberBean(String mid, String mpw, String mname, String mphone, String mbirth, String memail, int mpoint,
			String mgrade) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.mbirth = mbirth;
		this.memail = memail;
		this.mpoint = mpoint;
		this.mgrade = mgrade;
	}
	
	public MemberBean() {
		super();
	}
	@Override
	public String toString() {
		return "MemberBean [mid=" + mid + ", mpw=" + mpw + ", mname=" + mname + ", mphone=" + mphone + ", mbirth="
				+ mbirth + ", memail=" + memail + ", mpoint=" + mpoint + ", mgrade=" + mgrade + "]";
	}
	
	
	
	
}
