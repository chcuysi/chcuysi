package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.RefundMenuVO;
import vo.SalesProductsVO;


@Repository("salesProductsDao")
public class SalesProductsDaoImpl implements SalesProductsDao {
   
   @Autowired
   private SqlSessionTemplate mybatis;

   public List<SalesProductsVO> getSalesProducts(HashMap map) {
      return mybatis.selectList("SalesProductsDao.getSalesProducts", map);
   }
   

}