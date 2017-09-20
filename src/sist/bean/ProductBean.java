package sist.bean;

public class ProductBean {

	private int pnum;
	private String cgory;
	private int pamount;
	private String pname;
	private int pprice;
	private String pinfo;
	private String pimage;
	private int cnum;
	private int savemoney;
	private int pmprice;
	private String regdate;
	
	public ProductBean() {
		super();
	}

	public ProductBean(int pnum, String cgory, int pamount, String pname, int pprice, String pinfo, String pimage,
			int cnum, int savemoney, int pmprice, String regdate) {
		super();
		this.pnum = pnum;
		this.cgory = cgory;
		this.pamount = pamount;
		this.pname = pname;
		this.pprice = pprice;
		this.pinfo = pinfo;
		this.pimage = pimage;
		this.cnum = cnum;
		this.savemoney = savemoney;
		this.pmprice = pmprice;
		this.regdate = regdate;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public String getCgory() {
		return cgory;
	}

	public void setCgory(String cgory) {
		this.cgory = cgory;
	}

	public int getPamount() {
		return pamount;
	}

	public void setPamount(int pamount) {
		this.pamount = pamount;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public String getPinfo() {
		return pinfo;
	}

	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	public int getSavemoney() {
		return savemoney;
	}

	public void setSavemoney(int savemoney) {
		this.savemoney = savemoney;
	}

	public int getPmprice() {
		return pmprice;
	}

	public void setPmprice(int pmprice) {
		this.pmprice = pmprice;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "ProductBean [pnum=" + pnum + ", cgory=" + cgory + ", pamount=" + pamount + ", pname=" + pname
				+ ", pprice=" + pprice + ", pinfo=" + pinfo + ", pimage=" + pimage + ", cnum=" + cnum + ", savemoney="
				+ savemoney + ", pmprice=" + pmprice + ", regdate=" + regdate + "]";
	}

	
}
