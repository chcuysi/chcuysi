package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.SalesProductsService;
import vo.SalesProductsVO;

// 상품별 매출 컨트롤러
@Controller
@RequestMapping
public class SalesProductsController {
	
	// 의존성 주입
    @Autowired
    private SalesProductsService salesProductsService;

    // 상품별 매출 출력
    @RequestMapping("salesProducts.do")
    public void getSalesProducts(SalesProductsVO spvo, Model m) {
    	
    	// HashMap 객체 생성, 거기에 필요한 값들 넣기
        HashMap<String, Object> map = new HashMap<>();
        map.put("pid", spvo.getPid());
        map.put("category", spvo.getCategory());
        map.put("category2", spvo.getCategory2());
        map.put("name", spvo.getName());
        map.put("name2", spvo.getName2());
        map.put("price", spvo.getPrice());
        map.put("sell_total", spvo.getSell_total());

        // 그 값들을 상품별 매출 목록에 넣기(SalesProductsVO에 있는 값으로 한정)
        List<SalesProductsVO> list = salesProductsService.getSalesProducts(map);
        // Model 객체에 상품별 매출 목록을 추가
        m.addAttribute("salesProducts", list);
    }
    
}