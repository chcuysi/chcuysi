package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.IokMenuVO;

@Repository("iokMenuDao")
public class IokMenuDaoImpl implements IokMenuDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public List<IokMenuVO> getIokMenuList(HashMap map) {
		return mybatis.selectList("IokMenuDao.getIokMenuList", map);
	}
	public void updateIokMenu(IokMenuVO ivo) {
		mybatis.update("IokMenuDao.updateIokMenu", ivo);
	}

}