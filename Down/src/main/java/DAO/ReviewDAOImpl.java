package DAO;

import java.util.List;

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

	@Override
	public List<ReviewVO> showReview() {
		System.out.println("===> Mybatis showReview() 호출");
		return mybatis.selectList("ReviewDAO.showReview");
	}

	@Override
	public void updateReview(ReviewVO vo) {
		System.out.println("===> Mybatis updateReview() 호출");
		mybatis.update("ReviewDAO.updateReview");
	}


}
