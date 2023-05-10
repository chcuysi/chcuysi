package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class guideLineController {

	@RequestMapping("/{step}.do")
	public String guideLine(@PathVariable String step) {
		return step; 
	}
	
}
