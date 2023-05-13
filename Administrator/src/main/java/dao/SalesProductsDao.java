package dao;

import java.util.HashMap;
import java.util.List;

import vo.SalesProductsVO;



public interface SalesProductsDao {
   
   public List<SalesProductsVO> getSalesProducts(HashMap map);
	
	
}