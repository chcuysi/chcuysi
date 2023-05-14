package DAO;

import java.util.List;

import vo.ReviewVO;

public interface ReviewDAO {

	
	public void insertReview(ReviewVO vo);

	public List<ReviewVO> showReview();

	public ReviewVO updateReview(String renum);

	public void update(ReviewVO vo);
	
	public void delett(ReviewVO vo);

}
