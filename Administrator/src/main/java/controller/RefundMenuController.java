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

import service.RefundMenuService;
import vo.IokMenuVO;
import vo.RefundMenuVO;

@Controller
@RequestMapping
public class RefundMenuController {
    @Autowired
    private RefundMenuService refundMenuService;

    @RequestMapping("getRefundMenuList.do")
    public void getRefundMenuList(RefundMenuVO rvo, Model m) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("dnum", rvo.getDnum());
        map.put("onum", rvo.getOnum());
        map.put("daddr", rvo.getDaddr());
        map.put("dok", rvo.getDok());
        map.put("ddate", rvo.getDdate());
        map.put("rok", rvo.getRok());
        map.put("rokwhy", rvo.getRokwhy());

        List<RefundMenuVO> list = refundMenuService.getRefundMenuList(map);
        m.addAttribute("refundMenuList", list);
    }
    
    @PostMapping("getRefundMenuList.do/{onum}")
	@ResponseBody
	public void updateRefundMenu(@ModelAttribute("refundMenu") RefundMenuVO rvo) {
    	refundMenuService.updateRefundMenu(rvo);
	}
    
}