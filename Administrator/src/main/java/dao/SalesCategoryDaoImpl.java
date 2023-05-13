package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.RefundMenuVO;
import vo.SalesCategoryVO;

@Repository("salesCategoryDao")
public class SalesCategoryDaoImpl implements SalesCategoryDao {
   
   @Autowired
   private SqlSessionTemplate mybatis;

   public List<SalesCategoryVO> getSalesCategory(HashMap map) {
	      return mybatis.selectList("dao.SalesCategoryDao.getSalesCategory", map);
	   }
}
