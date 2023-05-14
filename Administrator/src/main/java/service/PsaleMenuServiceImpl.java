package service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.PsaleMenuDaoImpl;
import vo.MemberMenuVO;
import vo.PsaleMenuVO;

// 판매자회원 서비스
@Service("psaleMenuService")
public class PsaleMenuServiceImpl implements PsaleMenuService {
   
	// 의존성 주입
   @Autowired
   private PsaleMenuDaoImpl psaleMenuDao;

   // 판매자회원 메뉴 목록 가져옴 - HashMap 매개변수로 받음, 리스트로 리턴
   public List<PsaleMenuVO> getPsaleMenuList(HashMap map) { 
        return psaleMenuDao.getPsaleMenuList(map); 
   } 
   // 판매자회원 메뉴 업데이트
   public void updatePsaleMenu(PsaleMenuVO psvo) {
		psaleMenuDao.updatePsaleMenu(psvo);
	}
}