package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Service.LoginService;
import vo.ProductVO;

@Controller
public class insertController {
	
	@Autowired
	private LoginService service;
	
	
	@RequestMapping(value = "/insertProduct",method = RequestMethod.POST)
	public void insertProduct(ProductVO vo) {
		
		service.insertProduct(vo);
		
	}

}
