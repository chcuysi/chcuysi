package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MemberMenuVO;
import vo.PsaleMenuVO;

// 판매자회원 리포지토리
@Repository("psaleMenuDao")
public class PsaleMenuDaoImpl implements PsaleMenuDao {
   
	// 의존성 주입 - mybatis의 메소드 사용 위해 
    @Autowired
    private SqlSessionTemplate mybatis;
	
    // 판매자회원 메뉴 목록 가져옴 - HashMap 매개변수로 받음
    public List<PsaleMenuVO> getPsaleMenuList(HashMap map) {
    	//판매자회원 메뉴 목록 반환
    	return mybatis.selectList("PsaleMenuDao.getPsaleMenuList", map);
    }
    
    // 판매자회원 메뉴 업데이트
    public void updatePsaleMenu(PsaleMenuVO psvo) {
    	// MyBatis의 update 메소드 호출, SQL문과 매개변수 전달, 판매자회원 메뉴 업데이트함
    	mybatis.update("PsaleMenuDao.updatePsaleMenu", psvo);
    }

}