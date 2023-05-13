package service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SalesProductsDaoImpl;
import vo.SalesProductsVO;

@Service("salesProductsService")
public class SalesProductsServiceImpl implements SalesProductsService {
   
   @Autowired
   private SalesProductsDaoImpl salesProductsDao;

   public List<SalesProductsVO> getSalesProducts(HashMap map) { 
       return salesProductsDao.getSalesProducts(map); 

   } 
   
   
}