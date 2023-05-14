package dao;

import java.util.HashMap;
import java.util.List;

import vo.IokMenuVO;
import vo.RefundMenuVO;


// 환불 리포지토리 인터페이스
public interface RefundMenuDao {
   
   public List<RefundMenuVO> getRefundMenuList(HashMap map);
  	
	
}