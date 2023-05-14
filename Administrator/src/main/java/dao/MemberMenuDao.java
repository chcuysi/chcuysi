package dao;

import java.util.HashMap;
import java.util.List;

import vo.MemberMenuVO;


// 일반회원 리포지토리 인터페이스
public interface MemberMenuDao {
   
   public List<MemberMenuVO> getMemberMenuList(HashMap map);
   public void updateMemberMenu(MemberMenuVO mvo);
   
}