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

import service.PsaleMenuService;
import vo.PsaleMenuVO;

// 판매자회원 컨트롤러
@Controller
@RequestMapping
public class PsaleMenuController {
	
	// 의존성 주입
    @Autowired
    private PsaleMenuService psaleMenuService;

    // 판매자회원 메뉴 출력
    @RequestMapping("getPsaleMenuList.do")
    public void getPsaleMenuList(PsaleMenuVO pvo, Model m) {
    	
    	// HashMap 객체 생성, 거기에 필요한 값들 넣기
        HashMap<String, Object> map = new HashMap<>();
        map.put("pnum", pvo.getPnum());
        map.put("pid", pvo.getPid());
        map.put("paddr", pvo.getPaddr());
        map.put("pdaddr", pvo.getPdaddr());
        map.put("ptel", pvo.getPtel());
        map.put("pemail", pvo.getPemail());
        map.put("pdate", pvo.getPdate());
        map.put("pout", pvo.getPout());

        // 그 값들을 판매자회원 메뉴 목록에 넣기(PsaleMenuVO에 있는 값으로 한정)
        List<PsaleMenuVO> list = psaleMenuService.getPsaleMenuList(map);
        
        // Model 객체에 판매자회원 메뉴 목록을 추가
        m.addAttribute("psaleMenuList", list);
    }
    
    // 메소드 반환 값 본문으로 전송시킴
    @ResponseBody
    // ajax 구현 위해 post형식 사용
    @PostMapping("getPsaleMenuList.do/{mnum}")
    // 판매자회원 메뉴 수정
	public void updatePsaleMenu(@ModelAttribute("psaleMenu") PsaleMenuVO psvo) {
    	// service단의 메소드를 호출하여 판매자회원 메뉴를 업데이트함
	    psaleMenuService.updatePsaleMenu(psvo);
	}
    
}