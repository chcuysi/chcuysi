package DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MemberVO;
import vo.OrderVO;
import vo.ProductVO;
import vo.PsaleVO;

 @Repository
 public class LoginDAOImpl implements LoginDAO {

	
	@Autowired
	private SqlSessionTemplate session;
	
	
	@Override
	public MemberVO Login(MemberVO vo) {
		
		System.out.println("로그인 다오 함수 호출 완료");
		System.out.println("[파라미터 인식] 사용자 입력 ID = " + vo.getMid() +", 사용자 입력 PW = "+ vo.getMpw());
	
		MemberVO result = new MemberVO();
		
		if(session.selectOne("login.CheckLogin",vo) != null) {
		result = (MemberVO)session.selectOne("login.CheckLogin",vo);
		}
		
		
		return result;
	}
	
	public PsaleVO CheckLoginSales(PsaleVO vo) {
		
        PsaleVO result = new PsaleVO();
		
		if(session.selectOne("login.CheckLoginSales",vo) != null) {
		result = (PsaleVO)session.selectOne("login.CheckLoginSales",vo);
		}
		
	 return result;
	 
	}
	
	public List<ProductVO> getProductList() {
		
		return session.selectList("login.getProductList");
		
	}
	
	 public List<ProductVO> getFruitList(){
		 
		 return session.selectList("login.getFruitList");
	 }
		
	 public List<ProductVO> getVegetableList(){
		 
		 return session.selectList("login.getVegetableList");
	 }
	
	public ProductVO getProduct(String type) {
     HashMap map = new HashMap();
     
     map.put("type", type);
		
		return session.selectOne("login.getProduct",map);
	}
	
	public ProductVO imgNameSearch(String imgName) {
		
		return session.selectOne("login.imgNameSearch",imgName);
	}
	
	public void insertProduct(ProductVO vo) {
		
		session.insert("login.insertProduct",vo);
	}

	public List<ProductVO> getProductListIokCheck(String logName) {
		
		return session.selectList("login.getProductListIokCheck",logName);
	}
	
	public void insertOrder(List<ProductVO> list,String logName) {
	   Map m = new HashMap();
	   m.put("list", list);
	   m.put("logName", logName);
	   session.insert("login.insertOrder",m);
	}
	
	public List<OrderVO> buyHistory(String logName) {
		
		return session.selectList("login.buyHistory",logName);
	}
	
	public List<OrderVO> sellHistory(String logName) {
		return session.selectList("login.sellHistory", logName);
	}
	
	public void updateProductCount(List<ProductVO> list) {
		session.update("login.updateProductCount",list);
	}
	
	public void returnProduct(String onum) {
	session.delete("login.deleteProductOrder",onum);
	}
	
	public void insertReturnProduct(OrderVO vo) {
		
		session.insert("login.insertReturnProduct",vo);
	}
	
}
