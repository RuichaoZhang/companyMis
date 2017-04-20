package com.jeecg.category.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

/**   
 * @Title: Entity
 * @Description: 品类表
 * @author onlineGenerator
 * @date 2017-04-19 19:53:09
 * @version V1.0   
 *
 */
@Entity
@Table(name = "cux_category", schema = "")
@SuppressWarnings("serial")
public class CuxCategoryEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**品类*/
	@Excel(name="品类")
	private java.lang.String category;
	/**种类*/
	@Excel(name="种类")
	private java.lang.String zhonglei;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  品类
	 */
	@Column(name ="CATEGORY",nullable=true,length=32)
	public java.lang.String getCategory(){
		return this.category;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  品类
	 */
	public void setCategory(java.lang.String category){
		this.category = category;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  种类
	 */
	@Column(name ="ZHONGLEI",nullable=true,length=100)
	public java.lang.String getZhonglei(){
		return this.zhonglei;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  种类
	 */
	public void setZhonglei(java.lang.String zhonglei){
		this.zhonglei = zhonglei;
	}
}
