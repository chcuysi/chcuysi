package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.RefundMenuService;
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

        List<RefundMenuVO> list = refundMenuService.getRefundMenuList(map);
        m.addAttribute("refundMenuList", list);
    }
}