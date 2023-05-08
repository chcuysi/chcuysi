package service;

import java.util.HashMap;
import java.util.List;

import vo.CalculateMenuVO;

public interface CalculateMenuService {

	public List<CalculateMenuVO> getCalculateMenuList(HashMap map);
	
	public void updateCalculateMenu(CalculateMenuVO ivo);
	
}
