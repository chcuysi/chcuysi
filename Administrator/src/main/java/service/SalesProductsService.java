package service;


import java.util.HashMap;
import java.util.List;

import vo.RefundMenuVO;
import vo.SalesProductsVO;

public interface SalesProductsService {

   public List<SalesProductsVO> getSalesProducts(HashMap map);

}