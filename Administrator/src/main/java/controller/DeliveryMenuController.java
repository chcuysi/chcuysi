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

import service.DeliveryMenuService;
import vo.CalculateMenuVO;
import vo.DeliveryMenuVO;

@Controller
@RequestMapping
public class DeliveryMenuController {
    @Autowired
    private DeliveryMenuService deliveryMenuService;

    @RequestMapping("getDeliveryMenuList.do")
    public void getDeliveryMenuList(DeliveryMenuVO dvo, Model m) {
        HashMap map = new HashMap();
        map.put("dnum", dvo.getDnum());
        map.put("onum", dvo.getOnum());
        map.put("daddr", dvo.getDaddr());
        map.put("dok", dvo.getDok());
        map.put("ddate", dvo.getDdate());
        map.put("eok", dvo.getEok());
        map.put("rok", dvo.getRok());

        List<DeliveryMenuVO> list = deliveryMenuService.getDeliveryMenuList(map);
        m.addAttribute("deliveryMenuList", list);
    }
    
    @PostMapping("getDeliveryMenuList.do/{dnum}")
	@ResponseBody
	public void updateDeliveryMenu(@ModelAttribute("deliveryMenu") DeliveryMenuVO dvo) {
	    deliveryMenuService.updateDeliveryMenu(dvo);
	}
}
