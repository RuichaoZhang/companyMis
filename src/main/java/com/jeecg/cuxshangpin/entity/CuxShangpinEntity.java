package com.jeecg.cuxshangpin.entity;

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
 * @Description: 商品表
 * @author onlineGenerator
 * @date 2017-05-06 14:50:27
 * @version V1.0   
 *
 */
@Entity
@Table(name = "cux_shangpin", schema = "")
@SuppressWarnings("serial")
public class CuxShangpinEntity implements java.io.Serializable {
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
	/**商品名称*/
	@Excel(name="商品名称")
	private String shangpinMingcheng;
	/**商品入库价格*/
	@Excel(name="商品入库价格")
	private String shangpinRukjiage;
	/**商品单价*/
	@Excel(name="商品单价")
	private String shangpinDanjia;
	
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
	 *@return: java.lang.String  商品名称
	 */
	@Column(name ="SHANGPIN_MINGCHENG",nullable=true,length=200)
	public String getShangpinMingcheng(){
		return this.shangpinMingcheng;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品名称
	 */
	public void setShangpinMingcheng(String shangpinMingcheng){
		this.shangpinMingcheng = shangpinMingcheng;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商品入库价格
	 */
	@Column(name ="SHANGPIN_RUKJIAGE",nullable=true,length=32)
	public String getShangpinRukjiage(){
		return this.shangpinRukjiage;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品入库价格
	 */
	public void setShangpinRukjiage(String shangpinRukjiage){
		this.shangpinRukjiage = shangpinRukjiage;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  商品单价
	 */
	@Column(name ="SHANGPIN_DANJIA",nullable=true,length=32)
	public String getShangpinDanjia(){
		return this.shangpinDanjia;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  商品单价
	 */
	public void setShangpinDanjia(String shangpinDanjia){
		this.shangpinDanjia = shangpinDanjia;
	}
}
