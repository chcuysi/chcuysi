package service;


import java.util.HashMap;
import java.util.List;

import vo.CalculateMenuVO;
import vo.DeliveryMenuVO;

public interface DeliveryMenuService {

	public List<DeliveryMenuVO> getDeliveryMenuList(HashMap map);
	
	public void updateDeliveryMenu(DeliveryMenuVO ivo);
}
