package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

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
		  
		  List<ReviewVO> list = reviewService.showReview();
		  
		  ReviewVO vo = new ReviewVO();
		  
		  System.out.println("리뷰 호출 성공");	  
		  
		  m.addAttribute("review",list);
		  m.addAttribute("viewType","전체 리뷰 목록");

		  return "review";
	  }
	  

	  @RequestMapping(value = "reviewSave.do",method = RequestMethod.POST)
		public String insert(ReviewVO vo) {			
			
		  reviewService.insertReview(vo);

			return "review";
			
		}
	  
	@RequestMapping("reviewModify")
	public String modify(ReviewVO vo) {
	
        if (vo.getMid() == null) {
            vo.setMid("");
        }
		
		reviewService.updateReview(vo);
		
		return "review";
	}
	  
	
	  
	  
	  
}
