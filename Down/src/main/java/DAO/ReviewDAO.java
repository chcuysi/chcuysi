package DAO;

import java.util.List;

import vo.ReviewVO;

public interface ReviewDAO {

	
	public void insertReview(ReviewVO vo);

	public List<ReviewVO> showReview();

}
