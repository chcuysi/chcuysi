package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.IokMenuVO;

@Repository("iokMenuDao")
public class IokMenuDaoImpl implements IokMenuDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public List<IokMenuVO> getIokMenuList(IokMenuVO ivo) {
		return mybatis.selectList("IokMenuDao.getIokMenuList", ivo);
	}

}
