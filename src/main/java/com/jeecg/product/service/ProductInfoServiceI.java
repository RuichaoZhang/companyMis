package com.jeecg.product.service;
import com.jeecg.product.entity.ProductInfoEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface ProductInfoServiceI extends CommonService{
	
 	public void delete(ProductInfoEntity entity) throws Exception;
 	
 	public Serializable save(ProductInfoEntity entity) throws Exception;
 	
 	public void saveOrUpdate(ProductInfoEntity entity) throws Exception;
 	
}
