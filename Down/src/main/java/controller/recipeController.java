package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class recipeController {
	
	
	
	@RequestMapping("gofood")
	public String apple(Model apple) {
		
		System.out.println("매핑 스캔 성공");
		
		apple.addAttribute("name","유기농 못난이 꿀사과 5kg");
		apple.addAttribute("price","20,000원");
		apple.addAttribute("detail","우리에게 가장 익숙한 달콤한 사과 맛으로 다른 품종보다 육질이 아삭하고 저장성도 좋아요.");
		apple.addAttribute("say","세상에서 가장 순수하고, 맛있고, 행복한 사과를 만들자는 다짐");
		apple.addAttribute("type","goSingProduct");
		
		return "recipe";
	}

}
