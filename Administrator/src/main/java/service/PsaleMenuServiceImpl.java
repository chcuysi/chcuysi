package service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.PsaleMenuDaoImpl;
import vo.PsaleMenuVO;

@Service("psaleMenuService")
public class PsaleMenuServiceImpl implements PsaleMenuService {
   
   @Autowired
   private PsaleMenuDaoImpl psaleMenuDao;

   public List<PsaleMenuVO> getPsaleMenuList(HashMap map) { 
        return psaleMenuDao.getPsaleMenuList(map); 
   } 
   
}