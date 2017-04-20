package com.jeecg.notice.service;
import com.jeecg.notice.entity.NoticeInfoEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface NoticeInfoServiceI extends CommonService{
	
 	public void delete(NoticeInfoEntity entity) throws Exception;
 	
 	public Serializable save(NoticeInfoEntity entity) throws Exception;
 	
 	public void saveOrUpdate(NoticeInfoEntity entity) throws Exception;
 	
}
