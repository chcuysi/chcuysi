package service;


import java.util.HashMap;
import java.util.List;

import vo.RefundMenuVO;
import vo.SalesProductsVO;

// 상품별 매출 서비스 인터페이스
public interface SalesProductsService {

   public List<SalesProductsVO> getSalesProducts(HashMap map);

}