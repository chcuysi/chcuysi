package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import vo.IokMenuVO;


// 판매승인 리포지토리 인터페이스
public interface IokMenuDao {
	
	public List<IokMenuVO> getIokMenuList(HashMap map) ;
	public void updateIokMenu(IokMenuVO ivo);
	
}