package service;


import java.util.HashMap;
import java.util.List;

import vo.SalesCategoryVO;

// 카테고리별 매출(채소) 서비스 인터페이스
public interface SalesVegetableService {

   public List<SalesCategoryVO> getSalesVegetable(HashMap map);
 
}