package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Service.LoginService;
import vo.MemberVO;
import vo.OrderVO;
import vo.ProductVO;
import vo.PsaleVO;

@Controller
public class cartController {
	
	@Autowired
	private LoginService service;

@RequestMapping("/cart2")
public String cart2() {
	
	return "cart";
}


    @ResponseBody
	@RequestMapping(value="/cart")
	public String cart(@RequestParam("param") String param, HttpSession session,HttpServletRequest HttpServletRequest) {

	
		System.out.println("카트 함수 실행");
		
		String type = param;
		
		int Count = 1;
		if( HttpServletRequest.getParameter("Count") != null ) {
		 Count = (Integer.parseInt(HttpServletRequest.getParameter("Count")));
		}
		
		
			List<ProductVO> list = (ArrayList<ProductVO>) session.getAttribute("products");
   ProductVO vo = (ProductVO)service.getProduct(type);
     String Count2 = String.valueOf(vo.getiCount());
        vo.setiCount2(Count2);
   
		vo.setiCount(Count);
		// 수량 vo에 추가해서 리스트에 넣기
		list.add(vo);

		session.setAttribute("products", list);

		return "";
	}
	
	@RequestMapping("/sellHistory")
	public String sellHistory(Model m, HttpSession session) {
		String logName = (String)session.getAttribute("logName");
		List<OrderVO> list = (List<OrderVO>)service.sellHistory(logName);
		m.addAttribute("sellHistory",list);
		return "sellHistory";
	}
	
	@RequestMapping("/returnProduct")
	public String returnProduct(OrderVO vo) {
		
		String onum =vo.getOnum();
		service.returnProduct(onum);
		service.insertReturnProduct(vo);
		return "buyHistory";
	}
	
	@RequestMapping("/loginForm2")
	public String loginForm2() {
		
		return "loginForm2";
	}

	@RequestMapping("/UpdateMember")
	public String UpdateMember() {
		
		System.out.println("회원정보수정 전환 성공");
		return "mypage";
	}
	
	@RequestMapping("/iokCheck")
	public String iokCheck(HttpSession session) {
		
		String logName = (String)session.getAttribute("logName");
		
		System.out.println(logName);
		List<ProductVO> list = service.getProductListIokCheck(logName);
		
		System.out.println("회원정보수정 전환 성공");
		
		session.setAttribute("iokProduct", list);
		return "iokPage";
	}
	
	@RequestMapping("/testBuy")
	public String testBuy(HttpSession session) {
		List<ProductVO> list = (List<ProductVO>)session.getAttribute("products");
		String logName = (String) session.getAttribute("logName");
		service.insertOrder(list,logName);
   service.updateProductCount(list);
		
	
		session.removeAttribute("products");
		
		
		return "";
	
	}
	
	@RequestMapping("/memberOut")
	public String memberOut() {
		
		return "memberOut";
	}
	
	@RequestMapping("/buyHistory")
	public String buyHistory(Model m, HttpSession session) {
		String logName = (String)session.getAttribute("logName");
		List<OrderVO> list = (List<OrderVO>)service.buyHistory(logName);
		m.addAttribute("buyHistory",list);
		return "buyHistory";
	}
	
@RequestMapping("/insertProduct")
public String insertProduct(Model apple, HttpSession session) {
	/*
	 * String logName = (String) session.getAttribute("logName");
	 * System.out.println(logName);
	 */
	System.out.println("메인 화면 전환 성공");
	/* session.setAttribute("logName", logName); */
	return "insertProduct";
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
	
	  @ResponseBody
	  @RequestMapping("/delete") 
	  public String delete(@RequestParam("param") String param, HttpSession session) {
		  
		  List<ProductVO> list = (List<ProductVO>) session.getAttribute("products");
		
		  for(int i=0; i<list.size(); i++) {
			  ProductVO vo = list.get(i);
			   if(vo.getiNum().equals(param)) {
				   list.remove(i);
				   session.setAttribute("products", list);
			   }
		  }
		  
		  return "#"; 
	  }
	  
	  @ResponseBody
	  @RequestMapping("/plusCount") 
	  public String plusCount(@RequestParam("param") Integer param,@RequestParam("param2") String param2, HttpSession session) {
		  List<ProductVO> list = (List<ProductVO>) session.getAttribute("products");
		  for(int i=0; i<list.size(); i++) {
			  ProductVO vo = list.get(i);
			  if(vo.getiNum().equals(param2)) {
				  vo.setiCount(param+1);
				  list.add(vo);
				  list.remove(i);
				  session.setAttribute("products", list);
			  }
		  }
		  return "#";
	  }
	  
	  @ResponseBody
	  @RequestMapping("/minusCount") 
	  public String minusCount(@RequestParam("param") Integer param,@RequestParam("param2") String param2, HttpSession session) {
		  List<ProductVO> list = (List<ProductVO>) session.getAttribute("products");
		  for(int i=0; i<list.size(); i++) {
			  ProductVO vo = list.get(i);
			  if(vo.getiNum().equals(param2)) {
				  vo.setiCount(param-1);
				  list.add(vo);
				  list.remove(i);
				  session.setAttribute("products", list);
			  }
		  }
		  return "#";
	  }

	  
	  
	  @RequestMapping("/buy") 
	  public String buy(Model m,ProductVO vo) {
		  m.addAttribute("iCount2",vo.getiCount2());
	
		  
		  return "pay";
		  }
	 
	
	  @RequestMapping(value="/logOut",params="pageType=index") public String
	  logOut2(HttpSession session) {
	  
	 session.invalidate();
	 return "loginForm"; 
	 }
	 
	


	@RequestMapping("/loginForm")
	public String loginForm() {

		System.out.println("로그인폼 매핑 스캔 성공");
		return "loginForm";
	}

	
	// *********************************************************************일반 계정 로그인
	@RequestMapping(value="/loginCustomer", method=RequestMethod.GET)
	public String login(HttpServletRequest HttpServletRequest,Model mo, HttpSession session) {

		String id = HttpServletRequest.getParameter("id");
		String password = HttpServletRequest.getParameter("password");
		String moPageType = HttpServletRequest.getParameter("pageType");
		String moType = HttpServletRequest.getParameter("type");
		
		if(session.getAttribute("logName") != null ) {
			mo.addAttribute("Duplicate","Duplicate");
			return "loginForm";
		}
	

		System.out.println("개별 상품 창에서 로그인 매핑 스캔 성공 [파라미터 값] " + moPageType +" : " + moType);
		
		MemberVO vo = new MemberVO();
		vo.setMid(id);
		vo.setMpw(password);
		
		MemberVO checkResult = service.Login(vo);

		 if( id.equals(checkResult.getMid()) && password.equals(checkResult.getMpw())) { 
			 List<ProductVO> list = new ArrayList<ProductVO>();
			     mo.addAttribute("checkLogin","성공");
				 mo.addAttribute("moPageType",moPageType); 
				 mo.addAttribute("moType",moType);
				 session.setAttribute("logName", checkResult.getMid()); 
				 session.setAttribute("logType", "일반");
				 session.setAttribute("logPrice", 5000);
				 session.setAttribute("products", list);
				 
				 return "loginForm";
				 
				 } else mo.addAttribute("checkLogin","실패");
		
			return "loginForm"; 
	}
	
			
	// *********************************************************************판매자 계정 로그인
			@RequestMapping(value="loginSales", method=RequestMethod.GET)
			public String loginSales(HttpServletRequest HttpServletRequest,Model mo, HttpSession session) {
				
				if(session.getAttribute("logName") != null ) {
					mo.addAttribute("Duplicate","Duplicate");
					return "#";
				}

				String id = HttpServletRequest.getParameter("id");
				String password = HttpServletRequest.getParameter("password");
				String moPageType = HttpServletRequest.getParameter("pageType");
				String moType = HttpServletRequest.getParameter("type");

				System.out.println("개별 상품 창에서 로그인 매핑 스캔 성공 [파라미터 값] " + moPageType +" : " + moType);
				
				PsaleVO vo = new PsaleVO();
				vo.setPid(id);
				vo.setPnum(password);
				
				PsaleVO checkResult = service.CheckLoginSales(vo);

				 if( id.equals(checkResult.getPid()) && password.equals(checkResult.getPnum())) { 
					     mo.addAttribute("checkLogin","성공");
						 mo.addAttribute("moPageType",moPageType); 
						 mo.addAttribute("moType",moType);
						 session.setAttribute("logName", checkResult.getPid()); 
						 session.setAttribute("logType", "판매자");
						
						 return "loginForm";
						 
						 } else mo.addAttribute("checkLogin","실패");
				
					return "loginForm"; 
	}
}




















