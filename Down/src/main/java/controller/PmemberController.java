package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Service.PmemberService;
import vo.PmemberVO;

@Controller
public class PmemberController {

	@Autowired
	private PmemberService pmemberService;
	
	  //입력창을 보여주는것
	  
	  @RequestMapping("pmember.do")
	  public void Pmembership(){}
	  
	  //입력하게 해주는거
	  
	  @RequestMapping("savePmember.do") 
	  public String Pmember(PmemberVO vo){
		  pmemberService.insertPmember(vo); 
	  return "loginForm";
	  }
	  
	  @RequestMapping(value ="pselect.do",produces="application/text;charset=UTF-8")
	  @ResponseBody
	  public String select(PmemberVO vo) {
		  System.out.println("아이디 체크 요청 확인");
		PmemberVO result = pmemberService.selectPmember(vo);
		String msg = "사용가능 아이디 입니다.";
		if(result !=null) {
			msg="이미 사용 중인 아이디 입니다.";
		}
		 return msg;
	
}
}
