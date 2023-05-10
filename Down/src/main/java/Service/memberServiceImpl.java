package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.memberDAO;
import vo.MemberVO;

@Service("memberService")
public class memberServiceImpl implements memberService {

	@Autowired
	private memberDAO memberDAO;

	public void insertMember(MemberVO vo) {
		memberDAO.insertMember(vo);
		
	}

	@Override
	public MemberVO selectMember(MemberVO vo) {
		return  memberDAO.selectMember(vo);

	}

}
