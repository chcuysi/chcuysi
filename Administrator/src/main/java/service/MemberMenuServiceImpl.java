package service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberMenuDaoImpl;
import vo.MemberMenuVO;

@Service("memberMenuService")
public class MemberMenuServiceImpl implements MemberMenuService {
   
   @Autowired
   private MemberMenuDaoImpl memberMenuDao;

   public List<MemberMenuVO> getMemberMenuList(HashMap map) { 
        return memberMenuDao.getMemberMenuList(map); 
   } 
   
}