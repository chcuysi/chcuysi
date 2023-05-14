package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SalesVegetableDao;
import vo.SalesCategoryVO;

// 카테고리별 매출(채소) 서비스
@Service("salesVegetableService")
public class SalesVegetableServiceImpl implements SalesVegetableService {
   
	// 의존성 주입
   @Autowired
   private SalesVegetableDao salesVegetableDao;
   
   // 카테고리별 매출(채소) 목록 가져옴 - HashMap 매개변수로 받음, 리스트로 리턴
   public List<SalesCategoryVO> getSalesVegetable(HashMap map) {
       return salesVegetableDao.getSalesVegetable(map);
   }
}
