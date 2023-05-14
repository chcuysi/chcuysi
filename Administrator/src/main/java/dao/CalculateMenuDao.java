package dao;

import java.util.HashMap;
import java.util.List;

import vo.CalculateMenuVO;
import vo.IokMenuVO;


//정산 리포지토리 인터페이스
public interface CalculateMenuDao {
	
	public List<CalculateMenuVO> getCalculateMenuList(HashMap map);
	public void updateCalculateMenu(CalculateMenuVO ivo);
}
