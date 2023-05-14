package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.RefundMenuVO;
import vo.SalesCategoryVO;

// 카테고리별 매출(채소) 리포지토리
@Repository("salesVegetableDao")
public class SalesVegetableDaoImpl implements SalesVegetableDao {
   
	// 의존성 주입 - mybatis의 메소드 사용 위해 
    @Autowired
    private SqlSessionTemplate mybatis;

    // 카테고리별 매출(채소) 목록 가져옴 - HashMap 매개변수로 받음
    public List<SalesCategoryVO> getSalesVegetable(HashMap map) {
    	
    	// 카테고리별 매출(채소) 목록 반환
    	return mybatis.selectList("dao.SalesVegetableDao.getSalesVegetable", map);
    	}
}
