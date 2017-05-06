package com.jeecg.cuxrukudan.service;
import com.jeecg.cuxrukudan.entity.CuxRukudanEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface CuxRukudanServiceI extends CommonService{
	
 	public void delete(CuxRukudanEntity entity) throws Exception;
 	
 	public Serializable save(CuxRukudanEntity entity) throws Exception;
 	
 	public void saveOrUpdate(CuxRukudanEntity entity) throws Exception;
 	
}
