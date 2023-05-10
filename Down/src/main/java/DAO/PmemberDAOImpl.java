package DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.PmemberVO;

@Repository("PmemberVO")
public class PmemberDAOImpl implements PmemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertPmember(PmemberVO vo) {
		System.out.println("===> Mybatis insertPmember() 호출");
		mybatis.insert("PmemberDAO.insertPmember", vo);
	}

	@Override
	public PmemberVO selectPmember(PmemberVO vo) {
		System.out.println("===> Mybatis selectPmember() 호출");
	return mybatis.selectOne("PmemberDAO.selectPmember", vo);
		
		
	}

	
	
}
