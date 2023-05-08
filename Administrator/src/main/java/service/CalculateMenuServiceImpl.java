package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CalculateMenuDaoImpl;
import vo.CalculateMenuVO;
import vo.IokMenuVO;

@Service("calculateMenuService")
public class CalculateMenuServiceImpl implements CalculateMenuService {
	
	@Autowired
	private CalculateMenuDaoImpl calculateMenuDao;

	public List<CalculateMenuVO> getCalculateMenuList(HashMap map) { 
	  	return calculateMenuDao.getCalculateMenuList(map); 
	} 
	public void updateCalculateMenu(CalculateMenuVO cvo) {
		calculateMenuDao.updateCalculateMenu(cvo);
	}
	
}
