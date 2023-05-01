package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import vo.ProductVO;

@Controller
public class marketController {
	
	@RequestMapping("/market")
	public String getProductList(Model m) {
		
		
		List<ProductVO> list = new ArrayList<ProductVO>();
		
		
		
		// 임시  db 값
		ProductVO vo = new ProductVO();
		vo.setName("유기농 못난이 꿀사과 5kg");
		vo.setPrice("20,000원");
		vo.setType("apple");
		vo.setCategory("과일");
		
		list.add(vo);
		
		ProductVO vo2 = new ProductVO();
		vo2.setName("꿀밤고구마 3kg");
		vo2.setPrice("18,000원");
		vo2.setType("go");
		vo2.setCategory("채소");
		list.add(vo2);
		
		ProductVO vo3 = new ProductVO();
		vo3.setName("일반 양송이 버섯 1kg");
		vo3.setPrice("9,900원");
		vo3.setType("bu");
		vo3.setCategory("채소");
		list.add(vo3);
		
		ProductVO vo4 = new ProductVO();
		vo4.setName("친환경 못난이 감자 4.5kg");
		vo4.setPrice("20,000");
		vo4.setType("pote");
		vo4.setCategory("채소");
		
		list.add(vo4);
		
		ProductVO vo5 = new ProductVO();
		vo5.setName("친환경 유기농 참배 5kg");
		vo5.setPrice("19,000원");
		vo5.setType("bae");
		vo5.setCategory("과일");
		
		list.add(vo5);
		
		ProductVO vo6 = new ProductVO();
		vo6.setName("유기농 참외 3kg");
		vo6.setPrice("10,000원");
		vo6.setType("cham");
		vo6.setCategory("과일");
		
		list.add(vo6);
		
		ProductVO vo7 = new ProductVO();
		vo7.setName("유기농 못난이 꿀사과 5kg");
		vo7.setPrice("20,000원");
		vo7.setType("apple");
		vo7.setCategory("과일");
		
		list.add(vo7);
		
		m.addAttribute("products",list);
		m.addAttribute("viewType","상품 전체 목록");
		
		return "products";
	}
	//         ***************************************DB 연동 X  테스트 작업 ******************************
	

	@RequestMapping("/va")
	public String getProductList2(Model m) {
		
		
		List<ProductVO> list = new ArrayList<ProductVO>();

		// 임시  db 값
		ProductVO vo = new ProductVO();
		vo.setName("유기농 못난이 꿀사과 5kg");
		vo.setPrice("20,000원");
		vo.setType("apple");
		vo.setCategory("과일");
		if( vo.getCategory().equals("채소") ) {
		list.add(vo);
		}
		ProductVO vo2 = new ProductVO();
		vo2.setName("꿀밤고구마 3kg");
		vo2.setPrice("18,000원");
		vo2.setType("go");
		vo2.setCategory("채소");
		if( vo2.getCategory().equals("채소") ) {
		list.add(vo2);
		}
		ProductVO vo3 = new ProductVO();
		vo3.setName("일반 양송이 버섯 1kg");
		vo3.setPrice("9,900원");
		vo3.setType("bu");
		vo3.setCategory("채소");
		if( vo3.getCategory().equals("채소") ) {
		list.add(vo3);
		}
		ProductVO vo4 = new ProductVO();
		vo4.setName("친환경 못난이 감자 4.5kg");
		vo4.setPrice("20,000");
		vo4.setType("pote");
		vo4.setCategory("채소");
		if( vo4.getCategory().equals("채소") ) {
		list.add(vo4);
		}
		ProductVO vo5 = new ProductVO();
		vo5.setName("친환경 유기농 참배 5kg");
		vo5.setPrice("19,000원");
		vo5.setType("bae");
		vo5.setCategory("과일");
		if( vo5.getCategory().equals("채소") ) {
		list.add(vo5);
		}
		ProductVO vo6 = new ProductVO();
		vo6.setName("유기농 참외 3kg");
		vo6.setPrice("10,000원");
		vo6.setType("cham");
		vo6.setCategory("과일");
		if( vo6.getCategory().equals("채소") ) {
		list.add(vo6);
		}
		ProductVO vo7 = new ProductVO();
		vo7.setName("유기농 못난이 꿀사과 5kg");
		vo7.setPrice("20,000원");
		vo7.setType("apple");
		vo7.setCategory("과일");
		if( vo7.getCategory().equals("채소") ) {
		list.add(vo7);
		}
		m.addAttribute("products",list);
		m.addAttribute("viewType","채소 목록");
		
		return "products";
	}
	       //***************************************DB 연동 X  테스트 작업 ******************************
	@RequestMapping("/fl")
	public String getProductList3(Model m) {
		
		
		List<ProductVO> list = new ArrayList<ProductVO>();

		// 임시  db 값
		ProductVO vo = new ProductVO();
		vo.setName("유기농 못난이 꿀사과 5kg");
		vo.setPrice("20,000원");
		vo.setType("apple");
		vo.setCategory("과일");
		if( vo.getCategory().equals("과일") ) {
		list.add(vo);
		}
		ProductVO vo2 = new ProductVO();
		vo2.setName("꿀밤고구마 3kg");
		vo2.setPrice("18,000원");
		vo2.setType("go");
		vo2.setCategory("채소");
		if( vo2.getCategory().equals("과일") ) {
		list.add(vo2);
		}
		ProductVO vo3 = new ProductVO();
		vo3.setName("일반 양송이 버섯 1kg");
		vo3.setPrice("9,900원");
		vo3.setType("bu");
		vo3.setCategory("채소");
		if( vo3.getCategory().equals("과일") ) {
		list.add(vo3);
		}
		ProductVO vo4 = new ProductVO();
		vo4.setName("친환경 못난이 감자 4.5kg");
		vo4.setPrice("20,000");
		vo4.setType("pote");
		vo4.setCategory("채소");
		if( vo4.getCategory().equals("과일") ) {
		list.add(vo4);
		}
		ProductVO vo5 = new ProductVO();
		vo5.setName("친환경 유기농 참배 5kg");
		vo5.setPrice("19,000원");
		vo5.setType("bae");
		vo5.setCategory("과일");
		if( vo5.getCategory().equals("과일") ) {
		list.add(vo5);
		}
		ProductVO vo6 = new ProductVO();
		vo6.setName("유기농 참외 3kg");
		vo6.setPrice("10,000원");
		vo6.setType("cham");
		vo6.setCategory("과일");
		if( vo6.getCategory().equals("과일") ) {
		list.add(vo6);
		}
		ProductVO vo7 = new ProductVO();
		vo7.setName("유기농 못난이 꿀사과 5kg");
		vo7.setPrice("20,000원");
		vo7.setType("apple");
		vo7.setCategory("과일");
		if( vo7.getCategory().equals("과일") ) {
		list.add(vo7);
		}
		m.addAttribute("products",list);
		m.addAttribute("viewType","과일 목록");
		
		return "products";
	}

}
