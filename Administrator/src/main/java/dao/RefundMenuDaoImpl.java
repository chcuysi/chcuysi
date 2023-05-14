package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.IokMenuVO;
import vo.RefundMenuVO;

// 환불 리포지토리
@Repository("refundMenuDao")
public class RefundMenuDaoImpl implements RefundMenuDao {
   
	// 의존성 주입 - mybatis의 메소드 사용 위해
   @Autowired
   private SqlSessionTemplate mybatis;

// 환불 메뉴 목록 가져옴 - HashMap 매개변수로 받음
   public List<RefundMenuVO> getRefundMenuList(HashMap map) {
	 //정산 메뉴 목록 반환
      return mybatis.selectList("RefundMenuDao.getRefundMenuList", map);
   }
   

}