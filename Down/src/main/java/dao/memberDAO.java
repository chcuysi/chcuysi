package dao;

import vo.MemberVO;

public interface memberDAO {

	public void insertMember(MemberVO vo);
	
	public MemberVO selectMember(MemberVO vo);
}
