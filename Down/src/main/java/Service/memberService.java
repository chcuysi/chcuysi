package Service;

import vo.MemberVO;

public interface memberService {

	public void insertMember(MemberVO vo);
	public MemberVO selectMember(MemberVO vo);
}
