package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SalesEtcDao;
import vo.SalesCategoryVO;

// 카테고리별 매출(기타) 서비스
@Service("salesEtcService")
public class SalesEtcServiceImpl implements SalesEtcService {
   
	// 의존성 주입
   @Autowired
   private SalesEtcDao salesEtcDao;
   
   // 카테고리별 매출(기타) 목록 가져옴 - HashMap 매개변수로 받음, 리스트로 리턴
   public List<SalesCategoryVO> getSalesEtc(HashMap map) {
       return salesEtcDao.getSalesEtc(map);
   }
}
