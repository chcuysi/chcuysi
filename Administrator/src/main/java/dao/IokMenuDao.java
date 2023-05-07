package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import vo.IokMenuVO;



public interface IokMenuDao {
	
	public List<IokMenuVO> getIokMenuList(HashMap map) ;
	
	public void updateIokMenu(IokMenuVO ivo);
	
}
