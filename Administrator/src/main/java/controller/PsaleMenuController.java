package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.PsaleMenuService;
import vo.PsaleMenuVO;

@Controller
@RequestMapping
public class PsaleMenuController {
    @Autowired
    private PsaleMenuService psaleMenuService;

    @RequestMapping("getPsaleMenuList.do")
    public void getPsaleMenuList(PsaleMenuVO pvo, Model m) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("pnum", pvo.getPnum());
        map.put("pid", pvo.getPid());
        map.put("paddr", pvo.getPaddr());
        map.put("pdaddr", pvo.getPdaddr());
        map.put("ptel", pvo.getPtel());
        map.put("pemail", pvo.getPemail());
        map.put("pdate", pvo.getPdate());
        map.put("pout", pvo.getPout());

        List<PsaleMenuVO> list = psaleMenuService.getPsaleMenuList(map);
        m.addAttribute("psaleMenuList", list);
    }
}