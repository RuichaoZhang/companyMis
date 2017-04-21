package com.jeecg.board.service.impl;
import com.jeecg.board.service.BoardInfoServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import com.jeecg.board.entity.BoardInfoEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.io.Serializable;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.jeecgframework.core.util.MyClassLoader;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.web.cgform.enhance.CgformEnhanceJavaInter;

@Service("boardInfoService")
@Transactional
public class BoardInfoServiceImpl extends CommonServiceImpl implements BoardInfoServiceI {

	
 	public void delete(BoardInfoEntity entity) throws Exception{
 		super.delete(entity);
 		//执行删除操作增强业务
		this.doDelBus(entity);
 	}
 	
 	public Serializable save(BoardInfoEntity entity) throws Exception{
 		Serializable t = super.save(entity);
 		//执行新增操作增强业务
 		this.doAddBus(entity);
 		return t;
 	}
 	
 	public void saveOrUpdate(BoardInfoEntity entity) throws Exception{
 		super.saveOrUpdate(entity);
 		//执行更新操作增强业务
 		this.doUpdateBus(entity);
 	}
 	
 	/**
	 * 新增操作增强业务
	 * @param t
	 * @return
	 */
	private void doAddBus(BoardInfoEntity t) throws Exception{
 	}
 	/**
	 * 更新操作增强业务
	 * @param t
	 * @return
	 */
	private void doUpdateBus(BoardInfoEntity t) throws Exception{
 	}
 	/**
	 * 删除操作增强业务
	 * @param id
	 * @return
	 */
	private void doDelBus(BoardInfoEntity t) throws Exception{
 	}
 	
 	private Map<String,Object> populationMap(BoardInfoEntity t){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("id", t.getId());
		map.put("boadr_id", t.getBoadrId());
		map.put("boadr_deal", t.getBoadrDeal());
		map.put("boadr_person", t.getBoadrPerson());
		map.put("boadr_tel", t.getBoadrTel());
		map.put("boadr_qq", t.getBoadrQq());
		map.put("boadr_content", t.getBoadrContent());
		map.put("boadr_time", t.getBoadrTime());
		return map;
	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @param t
	 * @return
	 */
 	public String replaceVal(String sql,BoardInfoEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{boadr_id}",String.valueOf(t.getBoadrId()));
 		sql  = sql.replace("#{boadr_deal}",String.valueOf(t.getBoadrDeal()));
 		sql  = sql.replace("#{boadr_person}",String.valueOf(t.getBoadrPerson()));
 		sql  = sql.replace("#{boadr_tel}",String.valueOf(t.getBoadrTel()));
 		sql  = sql.replace("#{boadr_qq}",String.valueOf(t.getBoadrQq()));
 		sql  = sql.replace("#{boadr_content}",String.valueOf(t.getBoadrContent()));
 		sql  = sql.replace("#{boadr_time}",String.valueOf(t.getBoadrTime()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
 	
 	/**
	 * 执行JAVA增强
	 */
 	private void executeJavaExtend(String cgJavaType,String cgJavaValue,Map<String,Object> data) throws Exception {
 		if(StringUtil.isNotEmpty(cgJavaValue)){
			Object obj = null;
			try {
				if("class".equals(cgJavaType)){
					//因新增时已经校验了实例化是否可以成功，所以这块就不需要再做一次判断
					obj = MyClassLoader.getClassByScn(cgJavaValue).newInstance();
				}else if("spring".equals(cgJavaType)){
					obj = ApplicationContextUtil.getContext().getBean(cgJavaValue);
				}
				if(obj instanceof CgformEnhanceJavaInter){
					CgformEnhanceJavaInter javaInter = (CgformEnhanceJavaInter) obj;
					javaInter.execute(data);
				}
			} catch (Exception e) {
				e.printStackTrace();
				throw new Exception("执行JAVA增强出现异常！");
			} 
		}
 	}
}