package service;

import java.util.HashMap;
import java.util.List;

import vo.CalculateMenuVO;

// 정산 서비스 인터페이스
public interface CalculateMenuService {

	public List<CalculateMenuVO> getCalculateMenuList(HashMap map);
	
	public void updateCalculateMenu(CalculateMenuVO ivo);
	
}
