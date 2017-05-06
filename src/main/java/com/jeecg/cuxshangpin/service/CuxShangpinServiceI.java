package com.jeecg.cuxshangpin.service;
import com.jeecg.cuxshangpin.entity.CuxShangpinEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface CuxShangpinServiceI extends CommonService{
	
 	public void delete(CuxShangpinEntity entity) throws Exception;
 	
 	public Serializable save(CuxShangpinEntity entity) throws Exception;
 	
 	public void saveOrUpdate(CuxShangpinEntity entity) throws Exception;
 	
}
