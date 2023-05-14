package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.SalesVegetableService;
import vo.SalesCategoryVO;

//카테고리별 매출(채소) 컨트롤러
@Controller
public class SalesVegetableController {
	
	// 의존성 주입
    @Autowired
    private SalesVegetableService salesVegetableService;
    
    // 카테고리별 매출(채소) 출력
    @RequestMapping("salesVegetable.do")
    public void getSalesVegetable(SalesCategoryVO scvo, Model m) {
    	
    	// HashMap 객체 생성, 거기에 필요한 값들 넣기
        HashMap<String, Object> map = new HashMap<>();
        map.put("category", scvo.getCategory());
        map.put("category2", scvo.getCategory2());
        map.put("sell_total", scvo.getSell_total());

        // 그 값들을 카테고리별 매출(채소) 목록에 넣기(SalesCategoryVO에 있는 값으로 한정)
        List<SalesCategoryVO> list = salesVegetableService.getSalesVegetable(map);
        // Model 객체에 카테고리별 매출(채소) 목록을 추가
        m.addAttribute("salesVegetable", list);
    }
 }