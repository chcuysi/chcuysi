package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cartController {
	
	
		@RequestMapping(value="/cart", params={"name=욕지도 못난이"})
		public String cart(Model apple) {
			
			System.out.println("매핑 스캔 성공");
			
			apple.addAttribute("name","욕지도 못난이");
			apple.addAttribute("name2","꿀밤고구마 3kg");
			apple.addAttribute("price","18,000원");
			apple.addAttribute("detail","매해 친환경 급식에 나갈 정도로 맛도, 품질도, 안전성도 보장된 고구마예요. 그 어렵다는 유기농 고구마 농사가 올해는 더욱 잘되어 풍년을 맞았고요.");
			apple.addAttribute("say","사람도, 땅도, 벗하는 다른 생명들도 같이 살릴 수 있는 유기농 농사를 지어야겠다 결심했죠.");
			apple.addAttribute("type","goSingProduct");
			
			return "cart";
		}
		
		
		
		
		@RequestMapping("/sajo")
		public String index(Model apple) {
			
			System.out.println("매핑 스캔 성공");
			
			apple.addAttribute("name","유기농 못난이 꿀사과 5kg");
			apple.addAttribute("price","20,000원");
			apple.addAttribute("detail","우리에게 가장 익숙한 달콤한 사과 맛으로 다른 품종보다 육질이 아삭하고 저장성도 좋아요.");
			apple.addAttribute("say","세상에서 가장 순수하고, 맛있고, 행복한 사과를 만들자는 다짐");
			apple.addAttribute("type","appleSingProduct");
			
			return "index";
		}
		

}
