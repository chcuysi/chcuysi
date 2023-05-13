package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SalesCategoryDao;
import vo.SalesCategoryVO;

@Service("salesCategoryService")
public class SalesCategoryServiceImpl implements SalesCategoryService {
   
   @Autowired
   private SalesCategoryDao salesCategoryDao;
   
   public List<SalesCategoryVO> getSalesCategory(HashMap map) {
       return salesCategoryDao.getSalesCategory(map);
   }
}
