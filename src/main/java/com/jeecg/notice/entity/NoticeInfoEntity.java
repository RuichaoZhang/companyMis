package com.jeecg.notice.entity;

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
 * @Description: 公司通知表
 * @author onlineGenerator
 * @date 2017-04-19 22:00:31
 * @version V1.0   
 *
 */
@Entity
@Table(name = "notice_info", schema = "")
@SuppressWarnings("serial")
public class NoticeInfoEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**通知名称*/
	@Excel(name="通知名称")
	private java.lang.String noticeName;
	/**通知时间*/
	@Excel(name="通知时间",format = "yyyy-MM-dd")
	private java.util.Date noticeTime;
	/**发布部门编号*/
	@Excel(name="发布部门编号")
	private java.lang.String noticeType;
	/**发布部门*/
	@Excel(name="发布部门")
	private java.lang.String noticeDept;
	/**发布内容*/
	@Excel(name="发布内容")
	private java.lang.String noticeContent;
	
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
	 *@return: java.lang.String  通知名称
	 */
	@Column(name ="NOTICE_NAME",nullable=true,length=200)
	public java.lang.String getNoticeName(){
		return this.noticeName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  通知名称
	 */
	public void setNoticeName(java.lang.String noticeName){
		this.noticeName = noticeName;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  通知时间
	 */
	@Column(name ="NOTICE_TIME",nullable=true,length=32)
	public java.util.Date getNoticeTime(){
		return this.noticeTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  通知时间
	 */
	public void setNoticeTime(java.util.Date noticeTime){
		this.noticeTime = noticeTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  发布部门编号
	 */
	@Column(name ="NOTICE_TYPE",nullable=true,length=32)
	public java.lang.String getNoticeType(){
		return this.noticeType;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  发布部门编号
	 */
	public void setNoticeType(java.lang.String noticeType){
		this.noticeType = noticeType;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  发布部门
	 */
	@Column(name ="NOTICE_DEPT",nullable=true,length=32)
	public java.lang.String getNoticeDept(){
		return this.noticeDept;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  发布部门
	 */
	public void setNoticeDept(java.lang.String noticeDept){
		this.noticeDept = noticeDept;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  发布内容
	 */
	@Column(name ="NOTICE_CONTENT",nullable=true,length=5000)
	public java.lang.String getNoticeContent(){
		return this.noticeContent;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  发布内容
	 */
	public void setNoticeContent(java.lang.String noticeContent){
		this.noticeContent = noticeContent;
	}
}
