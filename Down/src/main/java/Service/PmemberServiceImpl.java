package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.PmemberDAO;
import vo.PmemberVO;

@Service("PmemberService")
public class PmemberServiceImpl implements PmemberService {

	@Autowired
	private PmemberDAO PmemberDAO;

	public void insertPmember(PmemberVO vo) {
		PmemberDAO.insertPmember(vo);
		
	}

	@Override
	public PmemberVO selectPmember(PmemberVO vo) {
		return  PmemberDAO.selectPmember(vo);

	}

}
