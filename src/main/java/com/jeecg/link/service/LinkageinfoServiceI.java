package com.jeecg.link.service;
import com.jeecg.link.entity.LinkageinfoEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface LinkageinfoServiceI extends CommonService{
	
 	public void delete(LinkageinfoEntity entity) throws Exception;
 	
 	public Serializable save(LinkageinfoEntity entity) throws Exception;
 	
 	public void saveOrUpdate(LinkageinfoEntity entity) throws Exception;
 	
}
