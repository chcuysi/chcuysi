package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.SalesCategoryService;
import vo.SalesCategoryVO;
import vo.SalesProductsVO;

// 카테고리별 매출(과일) 컨트롤러
@Controller
public class SalesCategoryController {
	
	// 의존성 주입
    @Autowired
    private SalesCategoryService salesCategoryService;

    // 카테고리별 매출(과일) 출력
    @RequestMapping("salesCategory.do")
    public void getSalesCategory(SalesCategoryVO scvo, Model m) {
    	
    	// HashMap 객체 생성, 거기에 필요한 값들 넣기
        HashMap<String, Object> map = new HashMap<>();
        map.put("category", scvo.getCategory());
        map.put("category2", scvo.getCategory2());
        map.put("sell_total", scvo.getSell_total());

        // 그 값들을 카테고리별 매출(과일) 목록에 넣기(SalesCategoryVO에 있는 값으로 한정)
        List<SalesCategoryVO> list = salesCategoryService.getSalesCategory(map);
		// Model 객체에 카테고리별 매출(과일) 목록을 추가
        m.addAttribute("salesCategory", list);
    }
    
    
 }