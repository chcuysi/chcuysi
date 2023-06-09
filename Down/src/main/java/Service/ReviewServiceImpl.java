package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.ReviewDAO;
import vo.ReviewVO;


@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService {

	
	@Autowired
	private ReviewDAO ReviewDAO;
	
	@Override
	public void insertReview(ReviewVO vo) {		
		ReviewDAO.insertReview(vo);
	}

	public List<ReviewVO> showReview() {
		
		return ReviewDAO.showReview();  
	}
	
	public ReviewVO updateReview(String renum) {
		 return ReviewDAO.updateReview(renum);
	}

	public void update(ReviewVO vo) {
		ReviewDAO.update(vo);
	}

	@Override
	public void delett(ReviewVO vo) {
		ReviewDAO.delett(vo);
		
	}

}
