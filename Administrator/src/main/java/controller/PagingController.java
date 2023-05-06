package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PagingController {
	
	@RequestMapping("/index")
	public String index () {
		return "index";
	}
	
	@RequestMapping("/getDeliveryMenuList")
	public String getDeliveryMenuList () {
		return "getDeliveryMenuList";
	}
	@RequestMapping("/getExchangeMenuList")
	public String getExchangeMenuList () {
		return "getExchangeMenuList";
	}
	@RequestMapping("/getRefundMenuList")
	public String getRefundMenuList () {
		return "getRefundMenuList";
	}
	
	@RequestMapping("/getCalculateMenuList")
	public String getCalculateMenuList () {
		return "getCalculateMenuList";
	}
	@RequestMapping("/getMemberMenuList")
	public String getMemberMenuList () {
		return "getMemberMenuList";
	}
	@RequestMapping("/getPsaleMenuList")
	public String getPsaleMenuList () {
		return "getPsaleMenuList";
	}
	
	@RequestMapping("/login")
	public String login () {
		return "login";
	}
	
	@RequestMapping("/manage-users")
	public String manageUsers () {
		return "manage-users";
	}
	
	@RequestMapping("/maps")
	public String maps () {
		return "maps";
	}
	
	@RequestMapping("/preferences")
	public String preferences () {
		return "preferences";
	}
	
	

}
