package sist.action;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;

import sist.bean.ProductBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class ProductAddAction implements Action {

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();

	public ProductAddAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			int cnt = 0;
			String pathUpload = "C:\\Cart\\Cart\\WebContent\\upload\\";
			ProductBean pb = new ProductBean();

			String job = request.getParameter("job");
			pb.setPnum(job != null && job.equals("mod") ? Integer.parseInt(request.getParameter("pnum")) : 0);
			
			String fileName = "";
			Integer cnum = (Integer) request.getSession().getAttribute("cnum");
			int no = dao.productSeq();
			if (FileUpload.isMultipartContent(request)) {
				DiskFileUpload fileUpload = new DiskFileUpload();
				fileUpload.setSizeMax(1048576 * 150);
				List<FileItem> list = fileUpload.parseRequest(request);
				for (FileItem file : list) {
					String namee = file.getFieldName();
					if (!(cnum == -1)) {
						pb.setCnum(cnum);
					}
					if (pb.getPnum() == 0) {
						pb.setPnum(no);
					}
					if (namee.equals("categoryt")) {
						pb.setCgory(file.getString("EUC-KR"));
					}
					if (namee.equals("savedmoneyt")) {
						pb.setSavemoney(Integer.parseInt(file.getString("EUC-KR")));
					}
					if (namee.equals("productname")) {
						pb.setPname(file.getString("EUC-KR"));
					}
					if (namee.equals("sellprice1")) {
						pb.setPmprice(Integer.parseInt(file.getString("EUC-KR")));
					}
					if (namee.equals("sellprice2")) {
						pb.setPprice(Integer.parseInt(file.getString("EUC-KR")));
					}
					if (namee.equals("amount")) {
						pb.setPamount(Integer.parseInt(file.getString("EUC-KR")));
					}
					if (namee.equals("content")) {
						pb.setPinfo(file.getString("EUC-KR"));
					}

					if (file.getName() != null && file.getName().length() > 0) {
						if (!file.isFormField()) {
							fileName += cnt++ < 3 ? file.getName() + "#" : file.getName();
							File ff = new File(pathUpload + file.getName());
							file.write(ff);
						}
					}
				}
				pb.setPimage(fileName);
				if (job != null && job.equals("mod")) {
					dao.productUpdate(pb);
				} else if (job == null) {
					dao.productInsert(pb);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return new ActionForWard(path, redirect);
	}
}
