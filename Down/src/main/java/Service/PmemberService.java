package Service;

import vo.PmemberVO;

public interface PmemberService {

	public void insertPmember(PmemberVO vo);
	public PmemberVO selectPmember(PmemberVO vo);
}
