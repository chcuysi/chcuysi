package service;


import java.util.HashMap;
import java.util.List;

import vo.ExchangeMenuVO;

public interface ExchangeMenuService {

   public List<ExchangeMenuVO> getExchangeMenuList(HashMap map);
   
}