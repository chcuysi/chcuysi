package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Service.ReviewService;
import vo.ReviewVO;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
		
		//리뷰 전체 보기
	  @RequestMapping("review.do")
	  public String showReview(Model m){
		  
		  ReviewVO vo = new ReviewVO();
		  List<ReviewVO> list = reviewService.showReview();
	  
		  System.out.println("리뷰 호출 성공");	  
		  
		  m.addAttribute("review",list);
		  m.addAttribute("viewType","전체 리뷰 목록");

		  return "review";
	  }
	  
	  //리뷰 저장하기
	  @RequestMapping(value = "reviewSave.do",method = RequestMethod.POST)
		public String insert(ReviewVO vo) {			
			
		  reviewService.insertReview(vo);
		  return "redirect:review.do";	
		}
	  
	//리뷰 상세보기  
	@RequestMapping("reviewModify")
	public String modify(String renum,Model apple) {

		ReviewVO vo = reviewService.updateReview(renum);
		
		apple.addAttribute("vo", vo);
		return "reviewModify";
	}
	
	
		
		//리뷰 수정 폼 보기
	  @RequestMapping("reviewModifyForm")
	  public String show(HttpServletRequest HttpServletRequest,ReviewVO vo, Model m){
		 
		  String a = HttpServletRequest.getParameter("renum");
		
	  System.out.println("호출1234");
	   
	  ReviewVO vo1 = reviewService.updateReview(a);
	  m.addAttribute("vo", vo1);
	
	  
	  return "reviewModifyForm";
	  }
	  
	  
	  
	  @RequestMapping(value="modify", method = RequestMethod.POST)
	  public String show2(ReviewVO vo) {
		  System.out.println("호출5678");
		  System.out.println(vo.toString());
		  reviewService.update(vo);
		  
		  return "redirect:review.do";
	  }
	  
	  @RequestMapping("deleteTT")
	  public String delete(ReviewVO vo) {
		  System.out.println("호출9010");
		  
		  reviewService.delett(vo);
		  
		  return "redirect:review.do";
		  
	  }
	  
	  
	  
}
