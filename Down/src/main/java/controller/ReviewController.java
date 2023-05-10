package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import Service.ReviewService;
import vo.ReviewVO;

@Controller

public class ReviewController {

	@Autowired
	private ReviewService reviewService;
		
	
	  @RequestMapping("review.do")
	  public void review(){}
	  
	
	  @RequestMapping(value = "reviewSave.do",method = RequestMethod.POST)
		public String insertProduct(ReviewVO vo) {			
			
		  reviewService.insertReview(vo);

			return "review";
			
		}
	  
	  
	  
	  
}
