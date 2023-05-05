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

import service.IokMenuService;
import vo.IokMenuVO;
 

@Controller
public class IokMenuController {	// 판매승인 컨트롤러

	@Autowired
	private IokMenuService iokMenuService;
	
	// 판매승인목록 찾기
	@RequestMapping("getIokMenuList.do")
	public void getIokMenuList(IokMenuVO ivo, Model m) {
		HashMap map = new HashMap();
		map.put("pid", ivo.getPid());
		map.put("pname", ivo.getPname());
		map.put("pcategory", ivo.getCategory());
		map.put("pcategory2", ivo.getCategory2());
		map.put("name", ivo.getName());
		map.put("name2", ivo.getName2());
		map.put("price", ivo.getPrice());
		map.put("startdate", ivo.getStartdate());
		map.put("enddate", ivo.getEnddate());
		map.put("stock", ivo.getStock());
		map.put("iok", ivo.getIok());		
		
		List<IokMenuVO> list = iokMenuService.getIokMenuList(map);
		m.addAttribute("iokMenuList", list);
	}
	
	
	@PostMapping("getIokMenuList.do/{pid}")
	@ResponseBody
	public void updateIokMenu(@ModelAttribute("iokMenu") IokMenuVO ivo) {
	    iokMenuService.updateIokMenu(ivo);
	}
}
