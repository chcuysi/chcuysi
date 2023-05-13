package dao;

import java.util.HashMap;
import java.util.List;

import vo.SalesCategoryVO;



public interface SalesCategoryDao {
   
   public List<SalesCategoryVO> getSalesCategory(HashMap map);
	
}