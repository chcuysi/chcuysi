package dao;

import java.util.HashMap;
import java.util.List;

import vo.MemberMenuVO;
import vo.PsaleMenuVO;



public interface PsaleMenuDao {
   
	public List<PsaleMenuVO> getPsaleMenuList(HashMap map);
	public void updatePsaleMenu(PsaleMenuVO psvo);
}