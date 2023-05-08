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

@Controller
public class CalculateMenuController {	// 판매승인 컨트롤러

	@Autowired
	private CalculateMenuService calculateMenuService;

		// 정산목록 찾기
		@RequestMapping("getCalculateMenuList.do")
		public void getCalculateMenuList(CalculateMenuVO cvo, Model m) {
			HashMap map = new HashMap();
			map.put("pid", cvo.getPid());
			map.put("pname", cvo.getPname());
			map.put("name", cvo.getName());
			map.put("name2", cvo.getName2());
			map.put("sell_total", cvo.getSell_total());
			map.put("dcharge", cvo.getDcharge());
			map.put("ocharge", cvo.getOcharge());
			map.put("jungsanmoney", cvo.getJungsanmoney());
			map.put("jungsan", cvo.getJungsan());
			map.put("jungsandate", cvo.getJungsandate());		
			
			List<CalculateMenuVO> list = calculateMenuService.getCalculateMenuList(map);
			m.addAttribute("calculateMenuList", list);
		}
		
		@PostMapping("getCalculateMenuList.do/{pid}")
		@ResponseBody
		public void updateCalculateMenu(@ModelAttribute("calculateMenu") CalculateMenuVO ivo) {
		    calculateMenuService.updateCalculateMenu(ivo);
		}
	
	
}
