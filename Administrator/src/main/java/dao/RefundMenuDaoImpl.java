package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.RefundMenuVO;


@Repository("refundMenuDao")
public class RefundMenuDaoImpl implements RefundMenuDao {
   
   @Autowired
   private SqlSessionTemplate mybatis;

   public List<RefundMenuVO> getRefundMenuList(HashMap map) {
      return mybatis.selectList("RefundMenuDao.getRefundMenuList", map);
   }
   

}