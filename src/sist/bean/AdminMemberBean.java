package sist.bean;

public class AdminMemberBean {
	
	private int    cnum;        
	private String cid;       
	private String cpw;         
	private String cname;       
	private String ceoname;     
	private String compost;     
	private String comaddress;  
	private String comkind;     
	private String ccall;       
	private String chargeman;   
	private String cmphone;
	
	public AdminMemberBean(int cnum, String cid, String cpw, String cname, String ceoname, String compost,
			String comaddress, String comkind, String ccall, String chargeman, String cmphone) {
		super();
		this.cnum = cnum;
		this.cid = cid;
		this.cpw = cpw;
		this.cname = cname;
		this.ceoname = ceoname;
		this.compost = compost;
		this.comaddress = comaddress;
		this.comkind = comkind;
		this.ccall = ccall;
		this.chargeman = chargeman;
		this.cmphone = cmphone;
	}

	public AdminMemberBean() {
		super();
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getCpw() {
		return cpw;
	}

	public void setCpw(String cpw) {
		this.cpw = cpw;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCeoname() {
		return ceoname;
	}

	public void setCeoname(String ceoname) {
		this.ceoname = ceoname;
	}

	public String getCompost() {
		return compost;
	}

	public void setCompost(String compost) {
		this.compost = compost;
	}

	public String getComaddress() {
		return comaddress;
	}

	public void setComaddress(String comaddress) {
		this.comaddress = comaddress;
	}

	public String getComkind() {
		return comkind;
	}

	public void setComkind(String comkind) {
		this.comkind = comkind;
	}

	public String getCcall() {
		return ccall;
	}

	public void setCcall(String ccall) {
		this.ccall = ccall;
	}

	public String getChargeman() {
		return chargeman;
	}

	public void setChargeman(String chargeman) {
		this.chargeman = chargeman;
	}

	public String getCmphone() {
		return cmphone;
	}

	public void setCmphone(String cmphone) {
		this.cmphone = cmphone;
	}

	@Override
	public String toString() {
		return "AdminMemberBean [cnum=" + cnum + ", cid=" + cid + ", cpw=" + cpw + ", cname=" + cname + ", ceoname="
				+ ceoname + ", compost=" + compost + ", comaddress=" + comaddress + ", comkind=" + comkind + ", ccall="
				+ ccall + ", chargeman=" + chargeman + ", cmphone=" + cmphone + "]";
	}     
}
