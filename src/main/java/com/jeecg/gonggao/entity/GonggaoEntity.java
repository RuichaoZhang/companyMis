package com.jeecg.gonggao.entity;

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
 * @Description: 公告表
 * @author onlineGenerator
 * @date 2017-04-21 21:51:58
 * @version V1.0   
 *
 */
@Entity
@Table(name = "gonggao", schema = "")
@SuppressWarnings("serial")
public class GonggaoEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**公告名称*/
	@Excel(name="公告名称")
	private java.lang.String gonggaoName;
	/**发布部门*/
	@Excel(name="发布部门")
	private java.lang.String fabuDept;
	/**公告内容*/
	@Excel(name="公告内容")
	private java.lang.String gonggaoNeirong;
	/**发布时间*/
	@Excel(name="发布时间",format = "yyyy-MM-dd")
	private java.util.Date gabuShijian;
	
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
	 *@return: java.lang.String  公告名称
	 */
	@Column(name ="GONGGAO_NAME",nullable=true,length=320)
	public java.lang.String getGonggaoName(){
		return this.gonggaoName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  公告名称
	 */
	public void setGonggaoName(java.lang.String gonggaoName){
		this.gonggaoName = gonggaoName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  发布部门
	 */
	@Column(name ="FABU_DEPT",nullable=true,length=200)
	public java.lang.String getFabuDept(){
		return this.fabuDept;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  发布部门
	 */
	public void setFabuDept(java.lang.String fabuDept){
		this.fabuDept = fabuDept;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  公告内容
	 */
	@Column(name ="GONGGAO_NEIRONG",nullable=true,length=2000)
	public java.lang.String getGonggaoNeirong(){
		return this.gonggaoNeirong;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  公告内容
	 */
	public void setGonggaoNeirong(java.lang.String gonggaoNeirong){
		this.gonggaoNeirong = gonggaoNeirong;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  发布时间
	 */
	@Column(name ="GABU_SHIJIAN",nullable=true,length=32)
	public java.util.Date getGabuShijian(){
		return this.gabuShijian;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  发布时间
	 */
	public void setGabuShijian(java.util.Date gabuShijian){
		this.gabuShijian = gabuShijian;
	}
}
