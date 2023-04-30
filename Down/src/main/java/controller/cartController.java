package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vo.ProductVO;

@Controller
public class cartController {


	@RequestMapping(value="/cart")
	public String cart(HttpSession session,HttpServletRequest HttpServletRequest) {

		ProductVO vo = new ProductVO();
		System.out.println("카트 함수 실행");
		
		
		List<ProductVO> list =  new ArrayList<ProductVO>();
		
		if(session.getAttribute("products") != null ) {
		list = (ArrayList<ProductVO>) session.getAttribute("products");
		}
		
		System.out.println(session.getAttribute("products"));
		

		
		
		String type = HttpServletRequest.getParameter("type");
		System.out.println("type값 넘겨받기 : " +type );
		
		

		switch(type) {
		case "goSingProduct" : 
			vo.setName("욕지도 못난이"); 
			vo.setName2("꿀밤고구마 3kg"); 
			vo.setPrice("18,000원"); 
			vo.setDetail("매해 친환경 급식에 나갈 정도로 맛도, 품질도, 안전성도 보장된 고구마예요. 그 어렵다는 유기농 고구마 농사가 올해는 더욱 잘되어 풍년을 맞았고요.:)"); 
			vo.setSay("사람도, 땅도, 벗하는 다른 생명들도 같이 살릴 수 있는 유기농 농사를 지어야겠다 결심했죠."); 
			vo.setType(type);  

			list.add(vo); break;

		case "baeSingProduct" : 
			vo.setName("친환경 유기농 참배 5kg"); 
			vo.setPrice("19,000원"); 
			vo.setDetail("우리에게 가장 익숙한 달콤한 사과 맛으로 다른 품종보다 육질이 아삭하고 저장성도 좋아요."); 
			vo.setSay("세상에서 가장 순수하고, 맛있고, 행복한 사과를 만들자는 다짐"); 
			vo.setType(type);  

			list.add(vo); break;

		case "bananaSingProduct" : 
			vo.setName("유기농 못난이 꿀사과 5kg"); 
			vo.setPrice("20,000원"); 
			vo.setDetail("우리에게 가장 익숙한 달콤한 사과 맛으로 다른 품종보다 육질이 아삭하고 저장성도 좋아요."); 
			vo.setSay("세상에서 가장 순수하고, 맛있고, 행복한 사과를 만들자는 다짐"); 
			vo.setType(type); 

			list.add(vo); break;

		case "buSingProduct" : 
			vo.setName("화이트 못난이"); 
			vo.setName2("일반 양송이 버섯 1kg"); 
			vo.setPrice("9,900원"); 
			vo.setDetail("주위가 산으로 둘러쌓인 깨끗하고 맑은 장소에서 재배합니다. 버섯에 가장 많이 포함된 물도 지하수만을 사용하여 믿고 드셔도 되는 화이트 양송이버섯입니다."); 
			vo.setSay("청정지역에서 키운 화이트 양송이버섯입니다."); 
			vo.setType(type); 

			list.add(vo); break;

		case "chamSingProduct" : 
			vo.setName("유기농 참외 3kg"); 
			vo.setPrice("10,000원"); 
			vo.setDetail("우리에게 가장 익숙한 달콤한 사과 맛으로 다른 품종보다 육질이 아삭하고 저장성도 좋아요."); 
			vo.setSay("세상에서 가장 순수하고, 맛있고, 행복한 사과를 만들자는 다짐"); 
			vo.setType(type); 

			list.add(vo); break;

		case "poteSingProduct" : 
			vo.setName("친환경 못난이 감자 4.5kg"); 
			vo.setPrice("20,000원"); 
			vo.setDetail("농약, 화학 비료를 사용하지 않고 건강한 땅의 힘, 친환경 자재로 길렀어요. 유기 생물과 지렁이 등 양질의 토양을 만들어주는 미생물들이 살기 좋은 여건을 만들기 위해 제초제도 사용하지 않아요.\\r\\n\" + \r\n" + 
					"				\" 쑥쑥 자라나는 잡초를 모두 사람의 손으로 제거하는, 건강하고 안전한 먹거리를 위한 수고로움이 담긴 감자랍니다."); 
			vo.setSay("알감자로 하나씩 쏙쏙 먹기 좋은 크기의 맛난 감자들이에요! 무농약으로 기른만큼 껍질째로 드시길 강력 추천드립니다 :)"); 
			vo.setType(type); 

			list.add(vo); break;

		case "appleSingProduct" : 
			vo.setName("유기농 못난이 꿀사과 5kg");
			vo.setPrice("20,000원"); 
			vo.setDetail("우리에게 가장 익숙한 달콤한 사과 맛으로 다른 품종보다 육질이 아삭하고 저장성도 좋아요."); 
			vo.setSay("세상에서 가장 순수하고, 맛있고, 행복한 사과를 만들자는 다짐"); 
			vo.setType(type); 

			list.add(vo); break;
			
		

		}
		
		
		session.setAttribute("products", list);

      

		return "cart";
	}


	@RequestMapping("/sajo")
	public String index(Model apple, HttpSession session) {

		System.out.println("메인 화면 전환 성공");
		return "index";
	}


	@RequestMapping("/logOut")
	public String logOut(HttpSession session) {

		session.invalidate();
		return "index";	
	}


	@RequestMapping("/loginForm")
	public String loginForm() {

		System.out.println("로그인폼 매핑 스캔 성공");
		return "loginForm";
	}

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(HttpServletRequest HttpServletRequest,Model mo, HttpSession session) {

		String id = HttpServletRequest.getParameter("id");
		String password = HttpServletRequest.getParameter("password");
		String moPageType = HttpServletRequest.getParameter("pageType");
		String moType = HttpServletRequest.getParameter("type");

		System.out.println("개별 상품 창에서 로그인 매핑 스캔 성공 [파라미터 값] " + moPageType +" : " + moType);

		// 가상 DB 계정
		String [] DbId = {"김현석","윤재진","고다인","홍석희"};
		String DbPassword = "1234";


		for(int i=0; i<DbId.length; i++) {
			if( id.equals(DbId[i]) && password.equals(DbPassword)) {
				mo.addAttribute("checkLogin","성공");
				mo.addAttribute("moPageType",moPageType);
				mo.addAttribute("moType",moType);
				session.setAttribute("logName", DbId[i]);
				return "loginForm";
			} 
		} 
		mo.addAttribute("checkLogin","실패");
		return "loginForm"; 




	}
}
