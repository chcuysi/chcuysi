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

import service.MemberMenuService;
import vo.MemberMenuVO;

@Controller
@RequestMapping
public class MemberMenuController {
    @Autowired
    private MemberMenuService memberMenuService;

    @RequestMapping("getMemberMenuList.do")
    public void getMemberMenuList(MemberMenuVO mvo, Model m) {
        HashMap map = new HashMap();
        map.put("mnum", mvo.getMnum());
        map.put("mid", mvo.getMid());
        map.put("maddr", mvo.getMaddr());
        map.put("mdaddr", mvo.getMdaddr());
        map.put("mtel", mvo.getMtel());
        map.put("memail", mvo.getMemail());
        map.put("mdate", mvo.getMdate());
        map.put("mout", mvo.getMout());
        map.put("moutwhy", mvo.getMoutwhy());

        List<MemberMenuVO> list = memberMenuService.getMemberMenuList(map);
        m.addAttribute("memberMenuList", list);
    }
    
    @PostMapping("getMemberMenuList.do/{mnum}")
	@ResponseBody
	public void updateMemberMenu(@ModelAttribute("memberMenu") MemberMenuVO mvo) {
	    memberMenuService.updateMemberMenu(mvo);
	}
}