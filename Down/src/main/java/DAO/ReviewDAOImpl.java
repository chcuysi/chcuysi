package DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ReviewVO;

@Repository("ReviewVO")
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertReview(ReviewVO vo) {
		System.out.println("===> Mybatis insertReview() 호출");
		mybatis.insert("ReviewDAO.insertReview", vo);
	}


}
