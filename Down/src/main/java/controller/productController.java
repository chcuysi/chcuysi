package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class productController {


	
	@RequestMapping("apple")
	public String apple(Model apple) {
		
		System.out.println("매핑 스캔 성공");
		
		apple.addAttribute("name","유기농 못난이 꿀사과 5kg");
		apple.addAttribute("price","20,000원");
		apple.addAttribute("detail","우리에게 가장 익숙한 달콤한 사과 맛으로 다른 품종보다 육질이 아삭하고 저장성도 좋아요.");
		apple.addAttribute("say","세상에서 가장 순수하고, 맛있고, 행복한 사과를 만들자는 다짐");
		apple.addAttribute("type","appleSingProduct");
		
		return "single-product";
	}
	
	@RequestMapping("go")
	public String go(Model apple) {
		
		System.out.println("매핑 스캔 성공");
		
		apple.addAttribute("name","욕지도 못난이");
		apple.addAttribute("name2","꿀밤고구마 3kg");
		apple.addAttribute("price","18,000원");
		apple.addAttribute("detail","매해 친환경 급식에 나갈 정도로 맛도, 품질도, 안전성도 보장된 고구마예요. 그 어렵다는 유기농 고구마 농사가 올해는 더욱 잘되어 풍년을 맞았고요.");
		apple.addAttribute("say","사람도, 땅도, 벗하는 다른 생명들도 같이 살릴 수 있는 유기농 농사를 지어야겠다 결심했죠.");
		apple.addAttribute("type","goSingProduct");
		
		return "single-product";
	}
	
	@RequestMapping("bu")
	public String bu(Model apple) {
		
		System.out.println("매핑 스캔 성공");
		
		apple.addAttribute("name","화이트 못난이");
		apple.addAttribute("name2","일반 양송이 버섯 1kg");
		apple.addAttribute("price","9,900원");
		apple.addAttribute("detail","주위가 산으로 둘러쌓인 깨끗하고 맑은 장소에서 재배합니다. 버섯에 가장 많이 포함된 물도 지하수만을 사용하여 믿고 드셔도 되는 화이트 양송이버섯입니다.");
		apple.addAttribute("say","청정지역에서 키운 화이트 양송이버섯입니다.");
		apple.addAttribute("type","buSingProduct");
		
		return "single-product";
	}
	
	@RequestMapping("pote")
	public String pote(Model apple) {
		
		System.out.println("매핑 스캔 성공");
		
		apple.addAttribute("name","친환경 못난이 감자 4.5kg");
		apple.addAttribute("price","20,000원");
		apple.addAttribute("detail","농약, 화학 비료를 사용하지 않고 건강한 땅의 힘, 친환경 자재로 길렀어요. 유기 생물과 지렁이 등 양질의 토양을 만들어주는 미생물들이 살기 좋은 여건을 만들기 위해 제초제도 사용하지 않아요.\r\n" + 
				" 쑥쑥 자라나는 잡초를 모두 사람의 손으로 제거하는, 건강하고 안전한 먹거리를 위한 수고로움이 담긴 감자랍니다.");
		apple.addAttribute("say","알감자로 하나씩 쏙쏙 먹기 좋은 크기의 맛난 감자들이에요! 무농약으로 기른만큼 껍질째로 드시길 강력 추천드립니다 :)");
		apple.addAttribute("type","poteSingProduct");
		
		return "single-product";
	}
	
	@RequestMapping("bae")
	public String bae(Model apple) {
		
		System.out.println("매핑 스캔 성공");
		
		apple.addAttribute("name","친환경 유기농 참배 5kg");
		apple.addAttribute("price","19,000원");
		apple.addAttribute("detail","우리에게 가장 익숙한 달콤한 사과 맛으로 다른 품종보다 육질이 아삭하고 저장성도 좋아요.");
		apple.addAttribute("say","세상에서 가장 순수하고, 맛있고, 행복한 사과를 만들자는 다짐");
		apple.addAttribute("type","baeSingProduct");
		
		return "single-product";
	}
	
	@RequestMapping("cham")
	public String cham(Model apple) {
		
		System.out.println("매핑 스캔 성공");
		
		apple.addAttribute("name","유기농 참외 3kg");
		apple.addAttribute("price","10,000원");
		apple.addAttribute("detail","우리에게 가장 익숙한 달콤한 사과 맛으로 다른 품종보다 육질이 아삭하고 저장성도 좋아요.");
		apple.addAttribute("say","세상에서 가장 순수하고, 맛있고, 행복한 사과를 만들자는 다짐");
		apple.addAttribute("type","chamSingProduct");
		
		return "single-product";
	}
	
	@RequestMapping("banana")
	public String banana(Model apple) {
		
		System.out.println("매핑 스캔 성공");
		
		apple.addAttribute("name","유기농 못난이 꿀사과 5kg");
		apple.addAttribute("price","20,000원");
		apple.addAttribute("detail","우리에게 가장 익숙한 달콤한 사과 맛으로 다른 품종보다 육질이 아삭하고 저장성도 좋아요.");
		apple.addAttribute("say","세상에서 가장 순수하고, 맛있고, 행복한 사과를 만들자는 다짐");
		apple.addAttribute("type","bananaSingProduct");
		
		return "single-product";
	}
	
	
	
}
