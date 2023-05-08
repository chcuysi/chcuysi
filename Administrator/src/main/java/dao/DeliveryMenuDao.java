package dao;

import java.util.HashMap;
import java.util.List;

import vo.DeliveryMenuVO;



public interface DeliveryMenuDao {
	
	public List<DeliveryMenuVO> getDeliveryMenuList(HashMap map);
}
