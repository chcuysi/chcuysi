package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.CalculateMenuVO;
import vo.IokMenuVO;

// 정산 리포지토리
@Repository("calculateMenuDao")
public class CalculateMenuDaoImpl implements CalculateMenuDao {
	
	// 의존성 주입 - mybatis의 메소드 사용 위해 
	@Autowired
	private SqlSessionTemplate mybatis;

	// 정산 메뉴 목록 가져옴 - HashMap 매개변수로 받음
	public List<CalculateMenuVO> getCalculateMenuList(HashMap map) {
		//정산 메뉴 목록 반환
		return mybatis.selectList("CalculateMenuDao.getCalculateMenuList", map);
	}
	
	// 정산 메뉴 업데이트
	public void updateCalculateMenu(CalculateMenuVO cvo) {
		// MyBatis의 update 메소드 호출, SQL문과 매개변수 전달, 정산 메뉴 업데이트함
		mybatis.update("CalculateMenuDao.updateCalculateMenu", cvo);
	}

}
