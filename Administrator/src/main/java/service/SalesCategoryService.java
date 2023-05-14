package service;


import java.util.HashMap;
import java.util.List;

import vo.SalesCategoryVO;

// 카테고리별 매출(과일) 인터페이스
public interface SalesCategoryService {

   public List<SalesCategoryVO> getSalesCategory(HashMap map);
 
}