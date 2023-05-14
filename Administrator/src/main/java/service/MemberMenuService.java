package service;


import java.util.HashMap;
import java.util.List;

import vo.IokMenuVO;
import vo.MemberMenuVO;

// 일반회원 서비스 인터페이스
public interface MemberMenuService {

	public List<MemberMenuVO> getMemberMenuList(HashMap map);
	public void updateMemberMenu(MemberMenuVO mvo); 
}