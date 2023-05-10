package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MemberMenuVO;


@Repository("memberMenuDao")
public class MemberMenuDaoImpl implements MemberMenuDao {
   
   @Autowired
   private SqlSessionTemplate mybatis;


   public List<MemberMenuVO> getMemberMenuList(HashMap map) {
	   return mybatis.selectList("MemberMenuDao.getMemberMenuList", map);
   }
   public void updateMemberMenu(MemberMenuVO mvo) {
		mybatis.update("MemberMenuDao.updateMemberMenu", mvo);
	}

}