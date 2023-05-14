package dao;

import java.util.HashMap;
import java.util.List;

import vo.MemberMenuVO;
import vo.PsaleMenuVO;


// 판매자회원 리포지토리 인터페이스
public interface PsaleMenuDao {
   
	public List<PsaleMenuVO> getPsaleMenuList(HashMap map);
	public void updatePsaleMenu(PsaleMenuVO psvo);
}