package sist.bean;

public class cartListBean {

	private int basketno;
	private int pnum;
	private String pname;
	private int pprice;
	private String pimage;
	private int savemoney;
	private String mid;
	private int pcount;
	private int callprice;
	private int dcharge;
	
	public int getBasketno() {
		return basketno;
	}
	public void setBasketno(int basketno) {
		this.basketno = basketno;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
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
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public int getSavemoney() {
		return savemoney;
	}
	public void setSavemoney(int savemoney) {
		this.savemoney = savemoney;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getPcount() {
		return pcount;
	}
	public void setPcount(int pcount) {
		this.pcount = pcount;
	}
	public int getCallprice() {
		return callprice;
	}
	public void setCallprice(int callprice) {
		this.callprice = callprice;
	}
	public int getDcharge() {
		return dcharge;
	}
	public void setDcharge(int dcharge) {
		this.dcharge = dcharge;
	}
	
	public cartListBean(int pnum, String pname, int pprice, String pimage, int savemoney, String mid, int pcount,
			int callprice, int dcharge) {
		super();
		this.pnum = pnum;
		this.pname = pname;
		this.pprice = pprice;
		this.pimage = pimage;
		this.savemoney = savemoney;
		this.mid = mid;
		this.pcount = pcount;
		this.callprice = callprice;
		this.dcharge = dcharge;
	}
	
	public cartListBean() {
		super();
	}
}
