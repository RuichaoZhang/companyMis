package com.jeecg.board.service;
import com.jeecg.board.entity.BoardInfoEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface BoardInfoServiceI extends CommonService{
	
 	public void delete(BoardInfoEntity entity) throws Exception;
 	
 	public Serializable save(BoardInfoEntity entity) throws Exception;
 	
 	public void saveOrUpdate(BoardInfoEntity entity) throws Exception;
 	
}
