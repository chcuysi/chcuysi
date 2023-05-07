package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Service.LoginService;
import vo.ProductVO;

@Controller
public class marketController {
	
	@Autowired
	private LoginService service;
	
	@RequestMapping("/market")
	public String getProductList(Model m) {
		
		
		List<ProductVO> list = new ArrayList<ProductVO>();
		
		
		System.out.println("마켓 호출 성공");
		
		
		ProductVO vo = new ProductVO();
		// db에서 등록 상품 리스트 불러오기
		list = service.getProductList();
		
		
		m.addAttribute("products",list);
		m.addAttribute("viewType","전체 상품 목록");
		
		
		
		return "products";
	}
	//         ***************************************
	

	@RequestMapping("/va")
	public String getProductList2(Model m) {
		
	
		
		List<ProductVO> list = new ArrayList<ProductVO>();
		
		list = service.getVegetableList();
		
		
		m.addAttribute("products",list);
		m.addAttribute("viewType","채소 목록");
		
		return "products";
	}
	       //***************************************DB 연동 X  테스트 작업 ******************************
	@RequestMapping("/fl")
	public String getProductList3(Model m) {
		
		
		List<ProductVO> list = new ArrayList<ProductVO>();

		// 임시  db 값
		
		list = service.getFruitList();
	
		m.addAttribute("products",list);
		m.addAttribute("viewType","과일 목록");
		
		return "products";
		
		
	}

}



















//임시  db 값  
		/*
		 * ProductVO vo = new ProductVO(); vo.setName("유기농 못난이 꿀사과 5kg");
		 * vo.setPrice("20,000원"); vo.setType2("apple"); vo.setCategory("과일");
		 * vo.setImgName("apple"); vo.setType("appleSingProduct");
		 * 
		 * list.add(vo);
		 * 
		 * ProductVO vo2 = new ProductVO(); vo2.setName("꿀밤고구마 3kg");
		 * vo2.setPrice("18,000원"); vo2.setType2("go"); vo2.setCategory("채소");
		 * vo2.setImgName("go"); vo2.setType("goSingProduct");
		 * 
		 * list.add(vo2);
		 * 
		 * ProductVO vo3 = new ProductVO(); vo3.setName("일반 양송이 버섯 1kg");
		 * vo3.setPrice("9,900원"); vo3.setType2("bu"); vo3.setCategory("채소");
		 * vo3.setImgName("bu"); vo3.setType("buSingProduct");
		 * 
		 * list.add(vo3);
		 * 
		 * ProductVO vo4 = new ProductVO(); vo4.setName("친환경 못난이 감자 4.5kg");
		 * vo4.setPrice("20,000"); vo4.setType2("pote"); vo4.setCategory("채소");
		 * vo4.setImgName("pote"); vo4.setType("poteSingProduct");
		 * 
		 * 
		 * list.add(vo4);
		 * 
		 * ProductVO vo5 = new ProductVO(); vo5.setName("친환경 유기농 참배 5kg");
		 * vo5.setPrice("19,000원"); vo5.setType2("bae"); vo5.setCategory("과일");
		 * vo5.setImgName("bae"); vo5.setType("baeSingProduct");
		 * 
		 * list.add(vo5);
		 * 
		 * ProductVO vo6 = new ProductVO(); vo6.setName("유기농 참외 3kg");
		 * vo6.setPrice("10,000원"); vo6.setType2("cham"); vo6.setCategory("과일");
		 * vo6.setImgName("cham"); vo6.setType("chamSingProduct");
		 * 
		 * list.add(vo6);
		 * 
		 * ProductVO vo7 = new ProductVO(); vo7.setName("유기농 못난이 꿀사과 5kg");
		 * vo7.setPrice("20,000원"); vo7.setType2("apple"); vo7.setCategory("과일");
		 * vo7.setImgName("apple"); vo7.setType("appleSingProduct");
		 * 
		 * System.out.println( ); list.add(vo7);
		 */



/*
 * // 임시 db 값 ProductVO vo = new ProductVO(); vo.setName("유기농 못난이 꿀사과 5kg");
 * vo.setPrice("20,000원"); vo.setType2("apple"); vo.setCategory("과일");
 * vo.setCategory2("사과/배"); vo.setImgName("apple");
 * vo.setType("appleSingProduct"); if( vo.getCategory().equals("채소") ) {
 * list.add(vo); } ProductVO vo2 = new ProductVO(); vo2.setName("꿀밤고구마 3kg");
 * vo2.setPrice("18,000원"); vo2.setType2("go"); vo2.setCategory("채소");
 * vo2.setCategory2("감자/고구마"); vo2.setImgName("go");
 * vo2.setType("goSingProduct"); if( vo2.getCategory().equals("채소") ) {
 * list.add(vo2); } ProductVO vo3 = new ProductVO();
 * vo3.setName("일반 양송이 버섯 1kg"); vo3.setPrice("9,900원"); vo3.setType2("bu");
 * vo3.setCategory("채소"); vo3.setCategory2("새송이/버섯류"); vo3.setImgName("bu");
 * vo3.setType("buSingProduct"); if( vo3.getCategory().equals("채소") ) {
 * list.add(vo3); } ProductVO vo4 = new ProductVO();
 * vo4.setName("친환경 못난이 감자 4.5kg"); vo4.setPrice("20,000");
 * vo4.setType2("pote"); vo4.setCategory("채소"); vo4.setCategory2("감자/고구마");
 * vo4.setImgName("pote"); vo4.setType("poteSingProduct"); if(
 * vo4.getCategory().equals("채소") ) { list.add(vo4); } ProductVO vo5 = new
 * ProductVO(); vo5.setName("친환경 유기농 참배 5kg"); vo5.setPrice("19,000원");
 * vo5.setType2("bae"); vo5.setCategory("과일"); vo5.setCategory2("사과/배");
 * vo5.setImgName("bae"); vo5.setType("baeSingProduct"); if(
 * vo5.getCategory().equals("채소") ) { list.add(vo5); } ProductVO vo6 = new
 * ProductVO(); vo6.setName("유기농 참외 3kg"); vo6.setPrice("10,000원");
 * vo6.setType2("cham"); vo6.setCategory("과일"); vo6.setCategory2("사과/배");
 * vo6.setImgName("cham"); vo6.setType("chamSingProduct"); if(
 * vo6.getCategory().equals("채소") ) { list.add(vo6); } ProductVO vo7 = new
 * ProductVO(); vo7.setName("유기농 못난이 꿀사과 5kg"); vo7.setPrice("20,000원");
 * vo7.setType2("apple"); vo7.setCategory("과일"); vo7.setCategory2("사과/배");
 * vo7.setImgName("apple"); vo7.setType("appleSingProduct"); if(
 * vo7.getCategory().equals("채소") ) { list.add(vo7); }
 */




/*
 * ProductVO vo = new ProductVO(); vo.setName("유기농 못난이 꿀사과 5kg");
 * vo.setPrice("20,000원"); vo.setType2("apple"); vo.setCategory("과일");
 * vo.setCategory2("사과/배"); vo.setImgName("apple");
 * vo.setType("appleSingProduct"); if( vo.getCategory().equals("과일") ) {
 * list.add(vo); } ProductVO vo2 = new ProductVO(); vo2.setName("꿀밤고구마 3kg");
 * vo2.setPrice("18,000원"); vo2.setType2("go"); vo2.setCategory("채소");
 * vo2.setCategory2("감자/고구마"); vo2.setImgName("go");
 * vo2.setType("goSingProduct"); if( vo2.getCategory().equals("과일") ) {
 * list.add(vo2); } ProductVO vo3 = new ProductVO();
 * vo3.setName("일반 양송이 버섯 1kg"); vo3.setPrice("9,900원"); vo3.setType2("bu");
 * vo3.setCategory("채소"); vo3.setCategory2("새송이/버섯류"); vo3.setImgName("bu");
 * vo3.setType("buSingProduct"); if( vo3.getCategory().equals("과일") ) {
 * list.add(vo3); } ProductVO vo4 = new ProductVO();
 * vo4.setName("친환경 못난이 감자 4.5kg"); vo4.setPrice("20,000");
 * vo4.setType2("pote"); vo4.setCategory("채소"); vo4.setCategory2("감자/고구마");
 * vo4.setImgName("pote"); vo4.setType("poteSingProduct"); if(
 * vo4.getCategory().equals("과일") ) { list.add(vo4); } ProductVO vo5 = new
 * ProductVO(); vo5.setName("친환경 유기농 참배 5kg"); vo5.setPrice("19,000원");
 * vo5.setType2("bae"); vo5.setCategory("과일"); vo5.setCategory2("사과/배");
 * vo5.setImgName("bae"); vo5.setType("baeSingProduct"); if(
 * vo5.getCategory().equals("과일") ) { list.add(vo5); } ProductVO vo6 = new
 * ProductVO(); vo6.setName("유기농 참외 3kg"); vo6.setPrice("10,000원");
 * vo6.setType2("cham"); vo6.setCategory("과일"); vo6.setCategory2("수박/참외");
 * vo6.setImgName("cham"); vo6.setType("chamSingProduct"); if(
 * vo6.getCategory().equals("과일") ) { list.add(vo6); } ProductVO vo7 = new
 * ProductVO(); vo7.setName("유기농 못난이 꿀사과 5kg"); vo7.setPrice("20,000원");
 * vo7.setType2("apple"); vo7.setCategory("과일"); vo7.setCategory2("사과/배");
 * vo7.setImgName("apple"); vo7.setType("appleSingProduct"); if(
 * vo7.getCategory().equals("과일") ) { list.add(vo7); }
 */