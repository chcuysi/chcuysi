package dao;

import java.util.HashMap;
import java.util.List;

import vo.SalesCategoryVO;


// 카테고리별 매출(기타) 리포지토리 인터페이스
public interface SalesEtcDao {
   
   public List<SalesCategoryVO> getSalesEtc(HashMap map);
	
}