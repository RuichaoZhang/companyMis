package com.jeecg.category.service;
import com.jeecg.category.entity.CuxCategoryEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface CuxCategoryServiceI extends CommonService{
	
 	public void delete(CuxCategoryEntity entity) throws Exception;
 	
 	public Serializable save(CuxCategoryEntity entity) throws Exception;
 	
 	public void saveOrUpdate(CuxCategoryEntity entity) throws Exception;
 	
}
