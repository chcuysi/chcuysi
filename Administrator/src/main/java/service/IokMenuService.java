package service;

import java.util.HashMap;
import java.util.List;

import vo.IokMenuVO;

public interface IokMenuService {

	public List<IokMenuVO> getIokMenuList(HashMap map);
	
	public void updateIokMenu(IokMenuVO ivo);
}