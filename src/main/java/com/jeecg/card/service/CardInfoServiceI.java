package com.jeecg.card.service;
import com.jeecg.card.entity.CardInfoEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface CardInfoServiceI extends CommonService{
	
 	public void delete(CardInfoEntity entity) throws Exception;
 	
 	public Serializable save(CardInfoEntity entity) throws Exception;
 	
 	public void saveOrUpdate(CardInfoEntity entity) throws Exception;
 	
}
