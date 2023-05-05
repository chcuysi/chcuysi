package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.IokMenuService;
import vo.IokMenuVO;
 

@Controller
@RequestMapping("/iokMenu")
public class IokMenuController {	// 판매승인 컨트롤러

	@Autowired
	private IokMenuService iokMenuService;
	
	// 판매승인목록 찾기
	@RequestMapping("/getIokMenuList")
	public String getIokMenuList(IokMenuVO ivo, Model m) {
		    m.addAttribute("iokMenuList", iokMenuService.getIokMenuList(ivo));
		    return "index";
	}
	
	/*
	 * public String getPsaleList(PsaleVO psvo, Model m) {
	 * m.addAttribute("psaleList", IokMenuService.getPsaleList(psvo)); }
	 */
	
}
