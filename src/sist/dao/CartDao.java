package sist.dao;

import java.util.HashMap;
import java.util.List;

import javax.websocket.Session;

import org.apache.catalina.util.SessionConfig;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sist.bean.AdminMemberBean;
import sist.bean.MemberBean;
import sist.bean.ProductBean;
import sist.bean.cartBean;
import sist.bean.cartListBean;

public class CartDao {
	private SqlSessionFactory sqlSessionFactory;	

	public CartDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public Integer adminSeq()throws Exception{
		return sqlSessionFactory.openSession().selectOne("adminSeq");
	}
	
	public Integer productSeq()throws Exception{
		return sqlSessionFactory.openSession().selectOne("productSeq");
	}
	
	public String idCheck(HashMap<String, String> map)throws Exception{
		String check=sqlSessionFactory.openSession().selectOne("idCheck",map);
		return check;
	}
	
	public void adminInsert(HashMap<String, String> map){
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.insert("adminInsert",map);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	public List<AdminMemberBean> selectAdminMember()throws Exception{
		return sqlSessionFactory.openSession().selectList("selectAdminMember");
	}
	
	public boolean adminLogin(String id,String pw)throws Exception{
		String pw2=sqlSessionFactory.openSession().selectOne("adminLogin",id);
		return pw.equals(pw2);
	}
	
	public AdminMemberBean adminInfo(String id)throws Exception{
		return sqlSessionFactory.openSession().selectOne("adminInfo",id);
	}
	
	public void productInsert(ProductBean bean)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.insert("productInsert",bean);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	public List<ProductBean> selectProduct(HashMap<String, Object> map){
		SqlSession session=sqlSessionFactory.openSession();
		List<ProductBean> list=null;
		try {
			list=session.selectList("selectProduct",map);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	
	public Integer getTotalRow(HashMap<String,Object> map)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		Integer temp=-1;
		try {
			temp=session.selectOne("getTotalRow", map);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}
		return temp;
	}
	
	public void productDelete(int no)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.delete("productDelete", no);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	public ProductBean productInfo(int no)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		ProductBean bean=null;
		try {
			bean=session.selectOne("productInfo",no);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}
		return bean;
	}
	
	public void productUpdate(ProductBean bean)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.update("productUpdate", bean);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	public List<ProductBean> selectNew(HashMap<String, Object> map){
		SqlSession session=sqlSessionFactory.openSession();
		List<ProductBean> list=null;
		try {
			list=session.selectList("selectNew",map);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	
	public void memberAdd(MemberBean bean)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.insert("memberAdd",bean);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	public boolean memberLogin(String id,String pw)throws Exception{
		String pw2=sqlSessionFactory.openSession().selectOne("memberLogin",id);
		return pw.equals(pw2);
	}
	
	public MemberBean memberInfo(String id)throws Exception{
		return sqlSessionFactory.openSession().selectOne("memberInfo",id);
	}
	
	public void cartInsert(cartBean bean)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.insert("cartInsert",bean);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	public List<cartListBean> cartListSelect(String mid)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		List<cartListBean> list=null;
		try {
			list=session.selectList("cartListSelect",mid);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	
	public Integer cartSeq()throws Exception{
		return sqlSessionFactory.openSession().selectOne("cartSeq");
	}
	
	public void cartDeleteOne(int basketNo)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.delete("cartDeleteOne",basketNo);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	public void cartDeleteAll(String mid)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.delete("cartDeleteAll",mid);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	public void cartDeletes(HashMap<Object, Object> no)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.delete("cartDeletes",no);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	public void cartUpdate(HashMap<Object, Object> map)throws Exception{
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.update("cartUpdate",map);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
}









