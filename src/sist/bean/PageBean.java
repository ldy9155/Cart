package sist.bean;

public class PageBean {
	private int currentPage;
	private int totalPage;
	private int startPage;
	private int endPage;
	private int currentBlock;
	
	public PageBean() {
		super();
	}

	public PageBean(int currentPage, int totalPage, int startPage, int endPage, int currentBlock) {
		super();
		this.currentPage = currentPage;
		this.totalPage = totalPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.currentBlock = currentBlock;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getCurrentBlock() {
		return currentBlock;
	}

	public void setCurrentBlock(int currentBlock) {
		this.currentBlock = currentBlock;
	}

	@Override
	public String toString() {
		return "PageBean [currentPage=" + currentPage + ", totalPage=" + totalPage + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", currentBlock=" + currentBlock + "]";
	}
	
	
	
	

}
