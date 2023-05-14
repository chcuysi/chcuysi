package service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberMenuDaoImpl;
import vo.MemberMenuVO;

// 일반회원 서비스
@Service("memberMenuService")
public class MemberMenuServiceImpl implements MemberMenuService {
   
	// 의존성 주입
   @Autowired
   private MemberMenuDaoImpl memberMenuDao;

   // 일반회원 메뉴 목록 가져옴 - HashMap 매개변수로 받음, 리스트로 리턴
   public List<MemberMenuVO> getMemberMenuList(HashMap map) { 
        return memberMenuDao.getMemberMenuList(map); 
   } 
   // 일반회원 메뉴 업데이트
   public void updateMemberMenu(MemberMenuVO mvo) {
		memberMenuDao.updateMemberMenu(mvo);
	}
}