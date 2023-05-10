package DAO;

import vo.PmemberVO;

public interface PmemberDAO {

	public void insertPmember(PmemberVO vo);
	
	public PmemberVO selectPmember(PmemberVO vo);

}
