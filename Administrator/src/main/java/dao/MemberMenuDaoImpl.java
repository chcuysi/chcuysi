package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MemberMenuVO;

// 일반회원 리포지토리
@Repository("memberMenuDao")
public class MemberMenuDaoImpl implements MemberMenuDao {
	
	// 의존성 주입 - mybatis의 메소드 사용 위해
	@Autowired
	private SqlSessionTemplate mybatis;

	// 일반회원 메뉴 목록 가져옴 - HashMap 매개변수로 받음
	public List<MemberMenuVO> getMemberMenuList(HashMap map) {
		//일반회원 메뉴 목록 반환
		return mybatis.selectList("MemberMenuDao.getMemberMenuList", map);
	}
	
	// 일반회원 메뉴 업데이트
	public void updateMemberMenu(MemberMenuVO mvo) {
		// MyBatis의 update 메소드 호출, SQL문과 매개변수 전달, 일반회원 메뉴 업데이트함
		mybatis.update("MemberMenuDao.updateMemberMenu", mvo);
	}

}