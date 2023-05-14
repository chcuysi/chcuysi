package service;

// 환불 서비스 인터페이스
import java.util.HashMap;
import java.util.List;

import vo.RefundMenuVO;

public interface RefundMenuService {

   public List<RefundMenuVO> getRefundMenuList(HashMap map);

}