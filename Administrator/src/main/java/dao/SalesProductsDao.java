package dao;

import java.util.HashMap;
import java.util.List;

import vo.SalesProductsVO;


//상품별 매출 리포지토리 인터페이스
public interface SalesProductsDao {
   
   public List<SalesProductsVO> getSalesProducts(HashMap map);
	
	
}