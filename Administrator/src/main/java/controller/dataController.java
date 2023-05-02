package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class dataController {
	
	@RequestMapping("/index")
	public String index () {
		return "index";
	}
	
	@RequestMapping("/iframe")
	public String iframe () {
		return "iframe";
	}
	
	
	@RequestMapping("/data-visualization")
	public String dataVisualization () {
		return "data-visualization";
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
