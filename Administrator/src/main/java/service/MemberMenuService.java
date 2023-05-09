package service;


import java.util.HashMap;
import java.util.List;

import vo.MemberMenuVO;

public interface MemberMenuService {

   public List<MemberMenuVO> getMemberMenuList(HashMap map);
   
}