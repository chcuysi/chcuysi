package service;


import java.util.HashMap;
import java.util.List;

import vo.DeliveryMenuVO;

public interface DeliveryMenuService {

	public List<DeliveryMenuVO> getDeliveryMenuList(HashMap map);
	
}
