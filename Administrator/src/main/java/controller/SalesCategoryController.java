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

@Controller
public class SalesCategoryController {
    @Autowired
    private SalesCategoryService salesCategoryService;
    
    @RequestMapping("salesCategory.do")
    public void getSalesCategory(SalesCategoryVO scvo, Model m) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("category", scvo.getCategory());
        map.put("category2", scvo.getCategory2());
        map.put("sell_total", scvo.getSell_total());

        List<SalesCategoryVO> list = salesCategoryService.getSalesCategory(map);
        m.addAttribute("salesCategory", list);
    }
    
    
 }