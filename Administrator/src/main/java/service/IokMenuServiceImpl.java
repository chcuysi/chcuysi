package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IokMenuDaoImpl;
import vo.IokMenuVO;

@Service("iokMenuService")
public class IokMenuServiceImpl implements IokMenuService {
	
	@Autowired
	private IokMenuDaoImpl iokMenuDao;

	 
	
	  public List<IokMenuVO> getIokMenuList(HashMap map) { 
	  		return iokMenuDao.getIokMenuList(map); 
	  }
	
	
	public void updateIokMenu(IokMenuVO ivo) {
		iokMenuDao.updateIokMenu(ivo);
	}
	
}
