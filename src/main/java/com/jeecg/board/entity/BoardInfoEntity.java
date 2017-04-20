package com.jeecg.board.entity;

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
 * @Description: 留言板表
 * @author onlineGenerator
 * @date 2017-04-19 22:01:05
 * @version V1.0   
 *
 */
@Entity
@Table(name = "board_info", schema = "")
@SuppressWarnings("serial")
public class BoardInfoEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**留言单号*/
	@Excel(name="留言单号")
	private java.lang.String boadrId;
	/**处理人编号*/
	@Excel(name="处理人编号")
	private java.lang.String boadrDeal;
	/**留言人姓名*/
	@Excel(name="留言人姓名")
	private java.lang.String boadrPerson;
	/**电话*/
	@Excel(name="电话")
	private java.lang.String boadrTel;
	/**qq*/
	@Excel(name="qq")
	private java.lang.String boadrQq;
	/**留言内容*/
	@Excel(name="留言内容")
	private java.lang.String boadrContent;
	/**留言时间*/
	@Excel(name="留言时间",format = "yyyy-MM-dd")
	private java.util.Date boadrTime;
	
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
	 *@return: java.lang.String  留言单号
	 */
	@Column(name ="BOADR_ID",nullable=true,length=32)
	public java.lang.String getBoadrId(){
		return this.boadrId;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  留言单号
	 */
	public void setBoadrId(java.lang.String boadrId){
		this.boadrId = boadrId;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  处理人编号
	 */
	@Column(name ="BOADR_DEAL",nullable=true,length=32)
	public java.lang.String getBoadrDeal(){
		return this.boadrDeal;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  处理人编号
	 */
	public void setBoadrDeal(java.lang.String boadrDeal){
		this.boadrDeal = boadrDeal;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  留言人姓名
	 */
	@Column(name ="BOADR_PERSON",nullable=true,length=100)
	public java.lang.String getBoadrPerson(){
		return this.boadrPerson;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  留言人姓名
	 */
	public void setBoadrPerson(java.lang.String boadrPerson){
		this.boadrPerson = boadrPerson;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  电话
	 */
	@Column(name ="BOADR_TEL",nullable=true,length=32)
	public java.lang.String getBoadrTel(){
		return this.boadrTel;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  电话
	 */
	public void setBoadrTel(java.lang.String boadrTel){
		this.boadrTel = boadrTel;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  qq
	 */
	@Column(name ="BOADR_QQ",nullable=true,length=32)
	public java.lang.String getBoadrQq(){
		return this.boadrQq;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  qq
	 */
	public void setBoadrQq(java.lang.String boadrQq){
		this.boadrQq = boadrQq;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  留言内容
	 */
	@Column(name ="BOADR_CONTENT",nullable=true,length=5000)
	public java.lang.String getBoadrContent(){
		return this.boadrContent;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  留言内容
	 */
	public void setBoadrContent(java.lang.String boadrContent){
		this.boadrContent = boadrContent;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  留言时间
	 */
	@Column(name ="BOADR_TIME",nullable=true,length=32)
	public java.util.Date getBoadrTime(){
		return this.boadrTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  留言时间
	 */
	public void setBoadrTime(java.util.Date boadrTime){
		this.boadrTime = boadrTime;
	}
}
