package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IokMenuDaoImpl;
import vo.IokMenuVO;

// 판매승인 서비스
@Service("iokMenuService")
public class IokMenuServiceImpl implements IokMenuService {
	
	// 의존성 주입
	@Autowired
	private IokMenuDaoImpl iokMenuDao;

	  // 판매승인 메뉴 목록 가져옴 - HashMap 매개변수로 받음, 리스트로 리턴
	  public List<IokMenuVO> getIokMenuList(HashMap map) { 
	  		return iokMenuDao.getIokMenuList(map); 
	  }
	
	// 판매승인 메뉴 업데이트
	public void updateIokMenu(IokMenuVO ivo) {
		iokMenuDao.updateIokMenu(ivo);
	}
	
}