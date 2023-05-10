package Service;

import java.util.List;

import vo.ReviewVO;

public interface ReviewService {

	
	public void insertReview(ReviewVO vo);

	public List<ReviewVO> showReview();
	

	
}
