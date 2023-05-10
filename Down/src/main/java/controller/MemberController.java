package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Service.memberService;
import vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private memberService memberService;
	
	  //입력창을 보여주는것
	  
	  @RequestMapping("member.do")
	  public void membership(){}
	  
	  //입력하게 해주는거
	  
	  @RequestMapping("saveMember.do") 
	  public String member(MemberVO vo){
	  memberService.insertMember(vo); 
	  return "loginForm";
	  }
	  
	  @RequestMapping(value ="select.do",produces="application/text;charset=UTF-8")
	  @ResponseBody
	  public String select(MemberVO vo) {
		  System.out.println("아이디 체크 요청 확인");
		MemberVO result = memberService.selectMember(vo);
		String msg = "사용가능 아이디 입니다.";
		if(result !=null) {
			msg="이미 사용 중인 아이디 입니다.";
		}
		 return msg;
	
}
}
