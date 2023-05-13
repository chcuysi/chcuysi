package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.RefundMenuVO;
import vo.SalesCategoryVO;

@Repository("salesVegetableDao")
public class SalesVegetableDaoImpl implements SalesVegetableDao {
   
   @Autowired
   private SqlSessionTemplate mybatis;

   public List<SalesCategoryVO> getSalesVegetable(HashMap map) {
	      return mybatis.selectList("dao.SalesVegetableDao.getSalesVegetable", map);
	   }
}
