package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.DeliveryMenuVO;

@Repository("deliveryMenuDao")
public class DeliveryMenuDaoImpl implements DeliveryMenuDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public List<DeliveryMenuVO> getDeliveryMenuList(HashMap map) {
		return mybatis.selectList("DeliveryMenuDao.getDeliveryMenuList", map);
	}
	

}
