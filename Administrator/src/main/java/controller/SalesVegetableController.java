package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.SalesVegetableService;
import vo.SalesCategoryVO;

@Controller
public class SalesVegetableController {
    @Autowired
    private SalesVegetableService salesVegetableService;
    
    @RequestMapping("salesVegetable.do")
    public void getSalesVegetable(SalesCategoryVO scvo, Model m) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("category", scvo.getCategory());
        map.put("category2", scvo.getCategory2());
        map.put("sell_total", scvo.getSell_total());

        List<SalesCategoryVO> list = salesVegetableService.getSalesVegetable(map);
        m.addAttribute("salesVegetable", list);
    }
    
    
 }