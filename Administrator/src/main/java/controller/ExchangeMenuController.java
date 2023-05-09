package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.ExchangeMenuService;
import vo.DeliveryMenuVO;
import vo.ExchangeMenuVO;

@Controller
@RequestMapping
public class ExchangeMenuController {
    @Autowired
    private ExchangeMenuService exchangeMenuService;

    @RequestMapping("getExchangeMenuList.do")
    public void getExchangeMenuList(ExchangeMenuVO evo, Model m) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("dnum", evo.getDnum());
        map.put("onum", evo.getOnum());
        map.put("daddr", evo.getDaddr());
        map.put("dok", evo.getDok());
        map.put("ddate", evo.getDdate());
        map.put("eok", evo.getEok());

        List<ExchangeMenuVO> list = exchangeMenuService.getExchangeMenuList(map);
        m.addAttribute("exchangeMenuList", list);
    }
}