package DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MemberVO;

@Repository("memberDAO")
public class memberDAOImpl implements memberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertMember(MemberVO vo) {
		System.out.println("===> Mybatis insertMember() 호출");
		mybatis.insert("MemberDAO.insertMember", vo);
	}

	@Override
	public MemberVO selectMember(MemberVO vo) {
		System.out.println("===> Mybatis selectMember() 호출");
	return mybatis.selectOne("MemberDAO.selectMember", vo);
		
		
	}

	
	
}
