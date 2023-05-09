package service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.RefundMenuDaoImpl;
import vo.ExchangeMenuVO;
import vo.RefundMenuVO;

@Service("refundMenuService")
public class RefundMenuServiceImpl implements RefundMenuService {
   
   @Autowired
   private RefundMenuDaoImpl refundMenuDao;

   public List<RefundMenuVO> getRefundMenuList(HashMap map) { 
        return refundMenuDao.getRefundMenuList(map); 
   } 
   
   public void updateRefundMenu(RefundMenuVO rvo) {
		refundMenuDao.updateRefundMenu(rvo);
	}
   
}