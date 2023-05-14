package controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 인덱스 컨트롤러
@Controller
public class PagingController {

	// 인덱스 출력
	@RequestMapping("/index")
	public String index () {
		return "index";
	}
}
