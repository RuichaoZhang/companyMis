package com.jeecg.link.entity;

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
 * @Description: 友情连接表
 * @author onlineGenerator
 * @date 2017-04-21 20:23:16
 * @version V1.0   
 *
 */
@Entity
@Table(name = "linkageInfo", schema = "")
@SuppressWarnings("serial")
public class LinkageinfoEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**链接名称*/
	@Excel(name="链接名称")
	private java.lang.String linkageName;
	/**地址*/
	@Excel(name="地址")
	private java.lang.String linkageAddr;
	
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
	 *@return: java.lang.String  链接名称
	 */
	@Column(name ="LINKAGE_NAME",nullable=true,length=32)
	public java.lang.String getLinkageName(){
		return this.linkageName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  链接名称
	 */
	public void setLinkageName(java.lang.String linkageName){
		this.linkageName = linkageName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  地址
	 */
	@Column(name ="LINKAGE_ADDR",nullable=true,length=5000)
	public java.lang.String getLinkageAddr(){
		return this.linkageAddr;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  地址
	 */
	public void setLinkageAddr(java.lang.String linkageAddr){
		this.linkageAddr = linkageAddr;
	}
}
