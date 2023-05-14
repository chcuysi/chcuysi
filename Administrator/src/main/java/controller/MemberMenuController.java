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

//일반회원 컨트롤러
@Controller
public class MemberMenuController {
	
	// 의존성 주입
    @Autowired
    private MemberMenuService memberMenuService;

    // 일반회원 메뉴 출력
    @RequestMapping("getMemberMenuList.do")
    public void getMemberMenuList(MemberMenuVO mvo, Model m) {
        
    	// HashMap 객체 생성, 거기에 필요한 값들 넣기
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

        // 그 값들을 일반회원 메뉴 목록에 넣기(MemberMenuVO에 있는 값으로 한정)
        List<MemberMenuVO> list = memberMenuService.getMemberMenuList(map);
        
     // Model 객체에 일반회원 메뉴 목록을 추가
        m.addAttribute("memberMenuList", list);
    }
    
    // 메소드 반환 값 본문으로 전송시킴
    @ResponseBody
    // ajax 구현 위해 post형식 사용
    @PostMapping("getMemberMenuList.do/{mnum}")
	// 일반회원 메뉴 수정
	public void updateMemberMenu(MemberMenuVO mvo) {
    	// service단의 메소드를 호출하여 일반회원 메뉴를 업데이트함
	    memberMenuService.updateMemberMenu(mvo);
	}
}