package sist.bean;

public class cartBean {
	
	private int pnum;
	private String mid;
	private int pcount;
	private int callprice;
	private int dcharge;
	private int basketno; 
	
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

	@Override
	public String toString() {
		return "cartBean [pnum=" + pnum + ", mid=" + mid + ", pcount=" + pcount + ", callprice=" + callprice
				+ ", dcharge=" + dcharge + ", basketno=" + basketno + "]";
	}
	
}
