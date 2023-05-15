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
import service.IokMenuService;
import vo.CalculateMenuVO;
import vo.IokMenuVO;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
 
//판매승인 컨트롤러
@Controller
public class IokMenuController {

	// 의존성 주입
	@Autowired
	private IokMenuService iokMenuService;
	
	// 판매승인 메뉴 출력
	@RequestMapping("getIokMenuList.do")
	
	// HashMap 객체 생성, 거기에 필요한 값들 넣기
	public void getIokMenuList(IokMenuVO ivo, Model m) {
		HashMap map = new HashMap();
		map.put("pid", ivo.getPid());
		map.put("pcategory", ivo.getCategory());
		map.put("pcategory2", ivo.getCategory2());
		map.put("name", ivo.getName());
		map.put("name2", ivo.getName2());
		map.put("price", ivo.getPrice());
		map.put("warehoused", ivo.getWarehoused());
		map.put("iok", ivo.getIok());	 
		map.put("iokwhy", ivo.getIokwhy());
		map.put("inum", ivo.getInum());
		
		// 그 값들을 판매승인 메뉴 목록에 넣기(IokMenuVO에 있는 값으로 한정)
		List<IokMenuVO> list = iokMenuService.getIokMenuList(map);
	
		// Model 객체에 판매승인 메뉴 목록을 추가
		m.addAttribute("iokMenuList", list);
	}
	
	// 메소드 반환 값 본문으로 전송시킴
	@ResponseBody
	// ajax 구현 위해 post형식 사용
	@PostMapping("getIokMenuList.do/{inum}")
	// 판매승인 메뉴 수정
	public void updateIokMenu(@ModelAttribute("iokMenu") IokMenuVO ivo) {
		// service단의 메소드를 호출하여 판매승인 메뉴를 업데이트함
		iokMenuService.updateIokMenu(ivo);
	}
	
	
	
	
}