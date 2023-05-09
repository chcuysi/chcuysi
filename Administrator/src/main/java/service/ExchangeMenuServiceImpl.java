package service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ExchangeMenuDaoImpl;
import vo.ExchangeMenuVO;

@Service("exchangeMenuService")
public class ExchangeMenuServiceImpl implements ExchangeMenuService {
   
   @Autowired
   private ExchangeMenuDaoImpl exchangeMenuDao;

   public List<ExchangeMenuVO> getExchangeMenuList(HashMap map) { 
        return exchangeMenuDao.getExchangeMenuList(map); 
   } 
   
}