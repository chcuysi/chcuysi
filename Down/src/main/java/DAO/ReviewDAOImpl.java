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
	public ReviewVO updateReview(String renum) {
		System.out.println("===> Mybatis updateReview() 호출");
		return mybatis.selectOne("ReviewDAO.updateReview",renum);
	}

	@Override
	public void update(ReviewVO vo) {
		System.out.println("===> Mybatis update() 호출");
		
		mybatis.update("ReviewDAO.update", vo);
	}

	
	public void delett(ReviewVO vo) {
		System.out.println("===> Mybatis delete() 호출");		
		mybatis.delete("ReviewDAO.delett", vo);
		
	}


}
