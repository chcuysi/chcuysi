package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SalesVegetableDao;
import vo.SalesCategoryVO;

@Service("salesVegetableService")
public class SalesVegetableServiceImpl implements SalesVegetableService {
   
   @Autowired
   private SalesVegetableDao salesVegetableDao;
   
   public List<SalesCategoryVO> getSalesVegetable(HashMap map) {
       return salesVegetableDao.getSalesVegetable(map);
   }
}
