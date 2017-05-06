package com.jeecg.cuxkucun.service;
import com.jeecg.cuxkucun.entity.CuxKucunEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface CuxKucunServiceI extends CommonService{
	
 	public void delete(CuxKucunEntity entity) throws Exception;
 	
 	public Serializable save(CuxKucunEntity entity) throws Exception;
 	
 	public void saveOrUpdate(CuxKucunEntity entity) throws Exception;
 	
}
