package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.DeliveryMenuVO;
import vo.ExchangeMenuVO;


@Repository("exchangeMenuDao")
public class ExchangeMenuDaoImpl implements ExchangeMenuDao {
   
   @Autowired
   private SqlSessionTemplate mybatis;

   public List<ExchangeMenuVO> getExchangeMenuList(HashMap map) {
      return mybatis.selectList("ExchangeMenuDao.getExchangeMenuList", map);
   }
   public void updateExchangeMenu(ExchangeMenuVO evo) {
		mybatis.update("ExchangeMenuDao.updateExchangeMenu", evo);
	}

}