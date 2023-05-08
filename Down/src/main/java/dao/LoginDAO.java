package dao;

import java.util.List;

import vo.MemberVO;
import vo.ProductVO;
import vo.PsaleVO;



public interface LoginDAO {
	
	
	public MemberVO Login(MemberVO vo);

	public PsaleVO CheckLoginSales(PsaleVO vo);
	
	public List<ProductVO> getProductList();
	
	
    public List<ProductVO> getFruitList();
	
    public List<ProductVO> getVegetableList();
    
	public ProductVO getProduct(String type);
	
	public ProductVO imgNameSearch(String imgName);
	
	public void insertProduct(ProductVO vo);
	
	public List<ProductVO> getProductListIokCheck(String logName);
	
	
}
