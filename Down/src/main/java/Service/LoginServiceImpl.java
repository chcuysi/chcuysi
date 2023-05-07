package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.LoginDAO;
import vo.MemberVO;
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
}
