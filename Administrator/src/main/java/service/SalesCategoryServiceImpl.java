package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SalesCategoryDao;
import vo.SalesCategoryVO;

// 카테고리별 매출(과일) 서비스
@Service("salesCategoryService")
public class SalesCategoryServiceImpl implements SalesCategoryService {
   
	// 의존성 주입
   @Autowired
   private SalesCategoryDao salesCategoryDao;
   
   // 카테고리별 매출(과일) 목록 가져옴 - HashMap 매개변수로 받음, 리스트로 리턴
   public List<SalesCategoryVO> getSalesCategory(HashMap map) {
       return salesCategoryDao.getSalesCategory(map);
   }
}
