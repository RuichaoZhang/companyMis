package com.jeecg.product.entity;

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
 * @Description: 公司产品表
 * @author onlineGenerator
 * @date 2017-04-21 23:06:49
 * @version V1.0   
 *
 */
@Entity
@Table(name = "product_info", schema = "")
@SuppressWarnings("serial")
public class ProductInfoEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**产品名称*/
	@Excel(name="产品名称")
	private java.lang.String productName;
	/**发布时间*/
	@Excel(name="发布时间",format = "yyyy-MM-dd")
	private java.util.Date productTime;
	/**发布部门*/
	@Excel(name="发布部门")
	private java.lang.String productType;
	/**发布内容*/
	@Excel(name="发布内容")
	private java.lang.String productContent;
	/**请选择上传的图片*/
	@Excel(name="请选择上传的图片")
	private byte[] productLink;
	
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
	 *@return: java.lang.String  产品名称
	 */
	@Column(name ="PRODUCT_NAME",nullable=true,length=500)
	public java.lang.String getProductName(){
		return this.productName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  产品名称
	 */
	public void setProductName(java.lang.String productName){
		this.productName = productName;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  发布时间
	 */
	@Column(name ="PRODUCT_TIME",nullable=true,length=32)
	public java.util.Date getProductTime(){
		return this.productTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  发布时间
	 */
	public void setProductTime(java.util.Date productTime){
		this.productTime = productTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  发布部门
	 */
	@Column(name ="PRODUCT_TYPE",nullable=true,length=32)
	public java.lang.String getProductType(){
		return this.productType;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  发布部门
	 */
	public void setProductType(java.lang.String productType){
		this.productType = productType;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  发布内容
	 */
	@Column(name ="PRODUCT_CONTENT",nullable=true,length=5000)
	public java.lang.String getProductContent(){
		return this.productContent;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  发布内容
	 */
	public void setProductContent(java.lang.String productContent){
		this.productContent = productContent;
	}
	/**
	 *方法: 取得java.sql.Blob
	 *@return: java.sql.Blob  请选择上传的图片
	 */
	@Column(name ="PRODUCT_LINK",nullable=true)
	public byte[] getProductLink(){
		return this.productLink;
	}

	/**
	 *方法: 设置java.sql.Blob
	 *@param: java.sql.Blob  请选择上传的图片
	 */
	public void setProductLink(byte[] productLink){
		this.productLink = productLink;
	}
}
