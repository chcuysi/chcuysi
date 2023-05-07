package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Service.LoginService;
import vo.ProductVO;

@Controller
public class productController {

	@Autowired
    private LoginService service;
	
	@RequestMapping("/detailView")
	public String apple(Model apple,String imgName) {
		
				
		ProductVO vo = service.imgNameSearch(imgName);
				
		apple.addAttribute("name", vo.getName());
		apple.addAttribute("price", vo.getPrice());
		apple.addAttribute("detail", vo.getDetail());
		apple.addAttribute("say", vo.getSay());
		apple.addAttribute("type", vo.getType());
		apple.addAttribute("frealfname", vo.getFrealfname());
		
		return "single-product";
				
	}
				
	
}
