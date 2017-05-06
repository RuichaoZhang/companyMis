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
 * @date 2017-05-02 19:22:52
 * @version V1.0   
 *
 */
@Entity
@Table(name = "cux_category", schema = "")
@SuppressWarnings("serial")
public class CuxCategoryEntity implements java.io.Serializable {
	/**主键*/
	private String id;
	/**种类*/
	@Excel(name="种类")
	private String zhonglei;
	/**品类*/
	@Excel(name="品类")
	private String pinlei;
	/**价格*/
	@Excel(name="价格")
	private Double jiage;
	/**录入时间*/
	@Excel(name="录入时间",format = "yyyy-MM-dd")
	private Date lurushijian;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=36)
	public String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  种类
	 */
	@Column(name ="ZHONGLEI",nullable=true,length=32)
	public String getZhonglei(){
		return this.zhonglei;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  种类
	 */
	public void setZhonglei(String zhonglei){
		this.zhonglei = zhonglei;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  品类
	 */
	@Column(name ="PINLEI",nullable=true,length=100)
	public String getPinlei(){
		return this.pinlei;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  品类
	 */
	public void setPinlei(String pinlei){
		this.pinlei = pinlei;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  价格
	 */
	@Column(name ="JIAGE",nullable=true,length=32)
	public Double getJiage(){
		return this.jiage;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  价格
	 */
	public void setJiage(Double jiage){
		this.jiage = jiage;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  录入时间
	 */
	@Column(name ="LURUSHIJIAN",nullable=true,length=32)
	public Date getLurushijian(){
		return this.lurushijian;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  录入时间
	 */
	public void setLurushijian(Date lurushijian){
		this.lurushijian = lurushijian;
	}
}
