package dao;

import java.util.HashMap;
import java.util.List;

import vo.DeliveryMenuVO;
import vo.ExchangeMenuVO;



public interface ExchangeMenuDao {
   
   public List<ExchangeMenuVO> getExchangeMenuList(HashMap map);
   public void updateExchangeMenu(ExchangeMenuVO dvo);
}