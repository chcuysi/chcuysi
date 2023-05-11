package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.CalculateMenuVO;
import vo.IokMenuVO;

@Repository("calculateMenuDao")
public class CalculateMenuDaoImpl implements CalculateMenuDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public List<CalculateMenuVO> getCalculateMenuList(HashMap map) {
		return mybatis.selectList("CalculateMenuDao.getCalculateMenuList", map);
	}
	
	public void updateCalculateMenu(CalculateMenuVO ivo) {
		System.out.println(ivo.getJokdate() + "다오임플 데이트");
		System.out.println(   ivo.getJokdate() + ":" + ivo.getInum() + ":" +ivo.getJok()   );
		mybatis.update("CalculateMenuDao.updateCalculateMenu", ivo);
	}

}
