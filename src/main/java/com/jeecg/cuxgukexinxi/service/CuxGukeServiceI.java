package com.jeecg.cuxgukexinxi.service;
import com.jeecg.cuxgukexinxi.entity.CuxGukeEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface CuxGukeServiceI extends CommonService{
	
 	public void delete(CuxGukeEntity entity) throws Exception;
 	
 	public Serializable save(CuxGukeEntity entity) throws Exception;
 	
 	public void saveOrUpdate(CuxGukeEntity entity) throws Exception;
 	
}
