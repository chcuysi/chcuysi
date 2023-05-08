package dao;

import java.util.HashMap;
import java.util.List;

import vo.CalculateMenuVO;
import vo.IokMenuVO;



public interface CalculateMenuDao {
	
	public List<CalculateMenuVO> getCalculateMenuList(HashMap map);
	public void updateCalculateMenu(CalculateMenuVO ivo);
}
