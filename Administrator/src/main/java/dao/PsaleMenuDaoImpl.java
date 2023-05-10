package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MemberMenuVO;
import vo.PsaleMenuVO;


@Repository("psaleMenuDao")
public class PsaleMenuDaoImpl implements PsaleMenuDao {
   
   @Autowired
   private SqlSessionTemplate mybatis;


   public List<PsaleMenuVO> getPsaleMenuList(HashMap map) {
	   return mybatis.selectList("PsaleMenuDao.getPsaleMenuList", map);
   }
   public void updatePsaleMenu(PsaleMenuVO psvo) {
		mybatis.update("PsaleMenuDao.updatePsaleMenu", psvo);
   }

}