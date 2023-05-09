package service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.DeliveryMenuDaoImpl;
import vo.CalculateMenuVO;
import vo.DeliveryMenuVO;

@Service("deliveryMenuService")
public class DeliveryMenuServiceImpl implements DeliveryMenuService {
	
	@Autowired
	private DeliveryMenuDaoImpl deliveryMenuDao;

	public List<DeliveryMenuVO> getDeliveryMenuList(HashMap map) { 
	  	return deliveryMenuDao.getDeliveryMenuList(map); 
	} 
	
	public void updateDeliveryMenu(DeliveryMenuVO dvo) {
		deliveryMenuDao.updateDeliveryMenu(dvo);
	}
	
}
