package dao;

import java.util.HashMap;
import java.util.List;

import vo.IokMenuVO;
import vo.RefundMenuVO;



public interface RefundMenuDao {
   
   public List<RefundMenuVO> getRefundMenuList(HashMap map);
   public void updateRefundMenu(RefundMenuVO rvo);
	
	
}