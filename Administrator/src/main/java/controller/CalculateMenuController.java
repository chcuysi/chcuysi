package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.CalculateMenuService;
import vo.CalculateMenuVO;
import vo.IokMenuVO;

//정산 컨트롤러
@Controller
public class CalculateMenuController {

	// 의존성 주입
	@Autowired
	private CalculateMenuService calculateMenuService;

		// 정산 메뉴 출력
		@RequestMapping("getCalculateMenuList.do") 
		public void getCalculateMenuList(CalculateMenuVO cvo, Model m) {
	
			// HashMap 객체 생성, 거기에 필요한 값들 넣기
			HashMap map = new HashMap();
			map.put("inum", cvo.getInum());
			map.put("pid", cvo.getPid());
			map.put("name", cvo.getName());
			map.put("name2", cvo.getName2());
			map.put("sell_total", cvo.getSell_total());
			map.put("dcharge", cvo.getDelivery());
			map.put("ocharge", cvo.getOcharge());
			map.put("jungsanmoney", cvo.getJungsanmoney());
			map.put("jungsan", cvo.getJok());
			map.put("jungsandate", cvo.getJokdate());		
	
			// 그 값들을 정산 메뉴 목록에 넣기(CalculateMenuVO에 있는 값으로 한정)
			List<CalculateMenuVO> list = calculateMenuService.getCalculateMenuList(map);
		
			// Model 객체에 정산 메뉴 목록을 추가
			m.addAttribute("calculateMenuList", list);
		}
		
		// 메소드 반환 값 본문으로 전송시킴
		@ResponseBody
		// ajax 구현 위해 post형식 사용
		@PostMapping("getCalculateMenuList.do/{inum}")
		// 정산 메뉴 수정
		public void updateCalculateMenu(CalculateMenuVO ivo) {
			// service단의 메소드를 호출하여 정산 메뉴를 업데이트함
		    calculateMenuService.updateCalculateMenu(ivo);
		}
	
	
}
