package service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.RefundMenuDaoImpl;
import vo.RefundMenuVO;

// 환불 서비스
@Service("refundMenuService")
public class RefundMenuServiceImpl implements RefundMenuService {
   
	// 의존성 주입
   @Autowired
   private RefundMenuDaoImpl refundMenuDao;

   // 환불 메뉴 목록 가져옴 - HashMap 매개변수로 받음, 리스트로 리턴
   public List<RefundMenuVO> getRefundMenuList(HashMap map) { 
        return refundMenuDao.getRefundMenuList(map); 
   } 
   
   
}