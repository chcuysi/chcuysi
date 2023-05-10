package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String showReview(Model m){
	    List<ReviewVO> list = reviewService.showReview(); // 데이터를 가져온 후에 list에 저장
	    
	    System.out.println("리뷰 호출 성공");
	    
	    m.addAttribute("review", list);
	    m.addAttribute("viewType", "전체 상품 목록");
	    
	    return "review";
	}
	  

	 
	  @RequestMapping(value = "reviewSave.do",method = RequestMethod.POST)
		public String insert(ReviewVO vo) {			
			
		  reviewService.insertReview(vo);

			return "review";
			
		}
	  
	
	  
	  
	  
	  
}
