package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.SalesProductsService;
import vo.SalesProductsVO;

@Controller
@RequestMapping
public class SalesProductsController {
    @Autowired
    private SalesProductsService salesProductsService;

    @RequestMapping("salesProducts.do")
    public void getSalesProducts(SalesProductsVO spvo, Model m) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("pid", spvo.getPid());
        map.put("category", spvo.getCategory());
        map.put("category2", spvo.getCategory2());
        map.put("name", spvo.getName());
        map.put("name2", spvo.getName2());
        map.put("price", spvo.getPrice());
        map.put("sell_total", spvo.getSell_total());

        List<SalesProductsVO> list = salesProductsService.getSalesProducts(map);
        m.addAttribute("salesProducts", list);
    }
    
}