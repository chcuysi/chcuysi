package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.LoginDAO;
import vo.MemberVO;
import vo.OrderVO;
import vo.ProductVO;
import vo.PsaleVO;

@Service("login")
public class LoginServiceImpl implements LoginService {
	
	
	@Autowired
	private LoginDAO loginDAO;
	
	public MemberVO Login(MemberVO vo) {
	
		System.out.println("로그인 서비스 호출 완료");
		return loginDAO.Login(vo);
	}
	
	public PsaleVO CheckLoginSales(PsaleVO vo) {
		return loginDAO.CheckLoginSales(vo);
	}
	
	public List<ProductVO> getProductList() {
	
		return loginDAO.getProductList();  
	}
	
    public List<ProductVO> getFruitList(){
		 
		return loginDAO.getFruitList();  
	 }
		
	 public List<ProductVO> getVegetableList(){
		 
			return loginDAO.getVegetableList();  
	 }
	    
	
	public ProductVO getProduct(String type) {
		return loginDAO.getProduct(type);
	}
	
	public ProductVO imgNameSearch(String imgName) {
	 return loginDAO.imgNameSearch(imgName);
	}
	
	public void insertProduct(ProductVO vo) {
		  loginDAO.insertProduct(vo);
		}
	
public List<ProductVO> getProductListIokCheck(String logName) {
		
		return loginDAO.getProductListIokCheck(logName);
	}

public void insertOrder(List<ProductVO> list,String logName) {
	   loginDAO.insertOrder(list,logName);
	}

public List<OrderVO> buyHistory(String logName) {
	
	return loginDAO.buyHistory(logName);
}

public List<OrderVO> sellHistory(String logName) {
	return loginDAO.sellHistory(logName);
}

public void updateProductCount(List<ProductVO> list) {
	loginDAO.updateProductCount(list);
}

public void returnProduct(String onum) {
	loginDAO.returnProduct(onum);
}
public void insertReturnProduct(OrderVO vo) {
	loginDAO.insertReturnProduct(vo);
}
}
