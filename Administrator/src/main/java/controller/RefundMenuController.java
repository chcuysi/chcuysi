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

// 환불 컨트롤러
@Controller
@RequestMapping
public class RefundMenuController {
	
	// 의존성 주입
    @Autowired
    private RefundMenuService refundMenuService;

    // 환불 메뉴 출력
    @RequestMapping("getRefundMenuList.do")
    public void getRefundMenuList(RefundMenuVO rvo, Model m) {
    	
    	// HashMap 객체 생성, 거기에 필요한 값들 넣기
        HashMap<String, Object> map = new HashMap<>();
        map.put("mid", rvo.getMid());
        map.put("icount", rvo.getIcount());
        map.put("name", rvo.getName());
        map.put("name2", rvo.getName2());
        map.put("pid", rvo.getPid());
        map.put("delivery", rvo.getDelivery());
        map.put("inum", rvo.getInum());
        map.put("rdate", rvo.getRdate());
        map.put("onum", rvo.getOnum());

        // 그 값들을 정산 메뉴 목록에 넣기(RefundMenuVO에 있는 값으로 한정)
        List<RefundMenuVO> list = refundMenuService.getRefundMenuList(map);

        // Model 객체에 정산 메뉴 목록을 추가
        m.addAttribute("refundMenuList", list);
    }
    
    
}