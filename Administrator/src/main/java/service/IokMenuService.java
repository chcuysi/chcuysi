package service;

import java.util.HashMap;
import java.util.List;

import vo.IokMenuVO;

// 판매승인 서비스 인터페이스
public interface IokMenuService {

	public List<IokMenuVO> getIokMenuList(HashMap map);
	
	public void updateIokMenu(IokMenuVO ivo);
}