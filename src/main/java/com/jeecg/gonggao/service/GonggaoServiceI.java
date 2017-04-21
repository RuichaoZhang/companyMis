package com.jeecg.gonggao.service;
import com.jeecg.gonggao.entity.GonggaoEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface GonggaoServiceI extends CommonService{
	
 	public void delete(GonggaoEntity entity) throws Exception;
 	
 	public Serializable save(GonggaoEntity entity) throws Exception;
 	
 	public void saveOrUpdate(GonggaoEntity entity) throws Exception;
 	
}
