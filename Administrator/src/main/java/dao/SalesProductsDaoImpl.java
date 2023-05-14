package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.RefundMenuVO;
import vo.SalesProductsVO;

// 상품별 매출 리포지토리
@Repository("salesProductsDao")
public class SalesProductsDaoImpl implements SalesProductsDao {
   
	//의존성 주입 - mybatis의 메소드ㅡ 사용 위해
   @Autowired
   private SqlSessionTemplate mybatis;

   // 상품별 매출 메뉴 목록 가져옴 - HashMap 매개변수로 받음
   public List<SalesProductsVO> getSalesProducts(HashMap map) {
	   //상품별 매출 메뉴 목록 반환
	   return mybatis.selectList("SalesProductsDao.getSalesProducts", map);
   }
   

}