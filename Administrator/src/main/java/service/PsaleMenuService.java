package service;


import java.util.HashMap;
import java.util.List;

import vo.MemberMenuVO;
import vo.PsaleMenuVO;

// 판매자회원 서비스 인터페이스
public interface PsaleMenuService {

   public List<PsaleMenuVO> getPsaleMenuList(HashMap map);
   public void updatePsaleMenu(PsaleMenuVO psvo);
}