package service;


import java.util.HashMap;
import java.util.List;

import vo.RefundMenuVO;

public interface RefundMenuService {

   public List<RefundMenuVO> getRefundMenuList(HashMap map);
   public void updateRefundMenu(RefundMenuVO rvo);

}