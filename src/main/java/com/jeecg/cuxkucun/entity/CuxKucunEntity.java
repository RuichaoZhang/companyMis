package com.jeecg.cuxkucun.entity;

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
 * @Description: 库存表
 * @author onlineGenerator
 * @date 2017-05-06 14:51:00
 * @version V1.0   
 *
 */
@Entity
@Table(name = "cux_kucun", schema = "")
@SuppressWarnings("serial")
public class CuxKucunEntity implements java.io.Serializable {
	/**主键*/
	private String id;
	/**创建人名称*/
	private String createName;
	/**创建人登录名称*/
	private String createBy;
	/**创建日期*/
	private Date createDate;
	/**更新人名称*/
	private String updateName;
	/**商品种类*/
	@Excel(name="商品种类")
	private String shangpinType;
	/**商品数量*/
	@Excel(name="商品数量")
	private Integer shangpinShuliang;
	/**商品编号*/
	@Excel(name="商品编号")
	private String shangpinBianhao;
	
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
	 *@return: java.lang.String  创建人名称
	 */
	@Column(name ="CREATE_NAME",nullable=true,length=50)
	public String getCreateName(){
		return this.createName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人名称
	 */
	public void setCreateName(String createName){
		this.createName = createName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人登录名称
	 */
	@Column(name ="CREATE_BY",nullable=true,length=50)
	public String getCreateBy(){
		return this.createBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人登录名称
	 */
	public void setCreateBy(String createBy){
		this.createBy = createBy;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  创建日期
	 */
	@Column(name ="CREATE_DATE",nullable=true,length=20)
	public Date getCreateDate(){
		return this.createDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  创建日期
	 */
	public void setCreateDate(Date createDate){
		this.createDate = createDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人名称
	 */
	@Column(name ="UPDATE_NAME",nullable=true,length=50)
	public String getUpdateName(){
		return this.updateName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人名称
	 */
	public void setUpdateName(String updateName){
		this.updateName = updateName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商品种类
	 */
	@Column(name ="SHANGPIN_TYPE",nullable=true,length=32)
	public String getShangpinType(){
		return this.shangpinType;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品种类
	 */
	public void setShangpinType(String shangpinType){
		this.shangpinType = shangpinType;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  商品数量
	 */
	@Column(name ="SHANGPIN_SHULIANG",nullable=true,length=32)
	public Integer getShangpinShuliang(){
		return this.shangpinShuliang;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  商品数量
	 */
	public void setShangpinShuliang(Integer shangpinShuliang){
		this.shangpinShuliang = shangpinShuliang;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商品编号
	 */
	@Column(name ="SHANGPIN_BIANHAO",nullable=true,length=64)
	public String getShangpinBianhao(){
		return this.shangpinBianhao;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品编号
	 */
	public void setShangpinBianhao(String shangpinBianhao){
		this.shangpinBianhao = shangpinBianhao;
	}
}
