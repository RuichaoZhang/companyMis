package com.jeecg.cuxgukexinxi.entity;

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
 * @Description: 顾客信息表
 * @author onlineGenerator
 * @date 2017-05-06 14:51:08
 * @version V1.0   
 *
 */
@Entity
@Table(name = "cux_guke", schema = "")
@SuppressWarnings("serial")
public class CuxGukeEntity implements java.io.Serializable {
	/**主键*/
	private String id;
	/**创建人名称*/
	private String createName;
	/**创建人登录名称*/
	private String createBy;
	/**创建日期*/
	private Date createDate;
	/**顾客名称*/
	@Excel(name="顾客名称")
	private String gukeName;
	/**顾客手机*/
	@Excel(name="顾客手机")
	private String gukeShouji;
	/**顾客地址*/
	@Excel(name="顾客地址")
	private String gukeDizhi;
	/**attribute1*/
	private String attribute1;
	/**attribute2*/
	private String attribute2;
	/**attribute3*/
	private String attribute3;
	
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
	 *@return: java.lang.String  顾客名称
	 */
	@Column(name ="GUKE_NAME",nullable=true,length=32)
	public String getGukeName(){
		return this.gukeName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  顾客名称
	 */
	public void setGukeName(String gukeName){
		this.gukeName = gukeName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  顾客手机
	 */
	@Column(name ="GUKE_SHOUJI",nullable=true,length=32)
	public String getGukeShouji(){
		return this.gukeShouji;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  顾客手机
	 */
	public void setGukeShouji(String gukeShouji){
		this.gukeShouji = gukeShouji;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  顾客地址
	 */
	@Column(name ="GUKE_DIZHI",nullable=true,length=200)
	public String getGukeDizhi(){
		return this.gukeDizhi;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  顾客地址
	 */
	public void setGukeDizhi(String gukeDizhi){
		this.gukeDizhi = gukeDizhi;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  attribute1
	 */
	@Column(name ="ATTRIBUTE1",nullable=true,length=200)
	public String getAttribute1(){
		return this.attribute1;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  attribute1
	 */
	public void setAttribute1(String attribute1){
		this.attribute1 = attribute1;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  attribute2
	 */
	@Column(name ="ATTRIBUTE2",nullable=true,length=200)
	public String getAttribute2(){
		return this.attribute2;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  attribute2
	 */
	public void setAttribute2(String attribute2){
		this.attribute2 = attribute2;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  attribute3
	 */
	@Column(name ="ATTRIBUTE3",nullable=true,length=200)
	public String getAttribute3(){
		return this.attribute3;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  attribute3
	 */
	public void setAttribute3(String attribute3){
		this.attribute3 = attribute3;
	}
}
