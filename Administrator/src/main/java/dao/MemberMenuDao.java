package dao;

import java.util.HashMap;
import java.util.List;

import vo.MemberMenuVO;



public interface MemberMenuDao {
   
   public List<MemberMenuVO> getMemberMenuList(HashMap map);
}