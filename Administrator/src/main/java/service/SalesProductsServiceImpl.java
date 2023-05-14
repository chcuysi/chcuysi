package service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SalesProductsDaoImpl;
import vo.SalesProductsVO;

// 상품별 매출 서비스
@Service("salesProductsService")
public class SalesProductsServiceImpl implements SalesProductsService {
   
	// 의존성 주입
   @Autowired
   private SalesProductsDaoImpl salesProductsDao;

   // 상품별 매출 목록 가져옴 - HashMap 매개변수로 받음, 리스트로 리턴
   public List<SalesProductsVO> getSalesProducts(HashMap map) { 
       return salesProductsDao.getSalesProducts(map); 

   } 
   
   
}