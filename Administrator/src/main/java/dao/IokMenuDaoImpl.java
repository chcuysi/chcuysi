package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.IokMenuVO;

// 판매승인 리포지토리
@Repository("iokMenuDao")
public class IokMenuDaoImpl implements IokMenuDao {
	
	// 의존성 주입 - mybaits의 메소드 사용 위해
	@Autowired
	private SqlSessionTemplate mybatis;

	// 판매승인 메뉴 목록 가져옴 - HashMap 매개변수로 받음
	public List<IokMenuVO> getIokMenuList(HashMap map) {
		//판매승인 메뉴 목록 반환
		return mybatis.selectList("IokMenuDao.getIokMenuList", map);
	}
	// 판매승인 메뉴 업데이트
	public void updateIokMenu(IokMenuVO ivo) {
		// MyBatis의 update 메소드 호출, SQL문과 매개변수 전달, 판매승인 메뉴 업데이트함
		mybatis.update("IokMenuDao.updateIokMenu", ivo);
	}

}