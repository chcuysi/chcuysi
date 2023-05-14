package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CalculateMenuDaoImpl;
import vo.CalculateMenuVO;
import vo.IokMenuVO;

// 정산 서비스
@Service("calculateMenuService")
public class CalculateMenuServiceImpl implements CalculateMenuService {
	
	// 의존성 주입
	@Autowired
	private CalculateMenuDaoImpl calculateMenuDao;

	// 정산 메뉴 목록 가져옴 - HashMap 매개변수로 받음, 리스트로 리턴
	public List<CalculateMenuVO> getCalculateMenuList(HashMap map) { 
	  	return calculateMenuDao.getCalculateMenuList(map); 
	} 
	// 정산 메뉴 업데이트
	public void updateCalculateMenu(CalculateMenuVO cvo) {
		calculateMenuDao.updateCalculateMenu(cvo);
	}
	
}
