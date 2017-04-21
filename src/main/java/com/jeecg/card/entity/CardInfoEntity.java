package com.jeecg.card.entity;

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
 * @Description: 公司名片表
 * @author onlineGenerator
 * @date 2017-04-21 20:23:40
 * @version V1.0   
 *
 */
@Entity
@Table(name = "card_info", schema = "")
@SuppressWarnings("serial")
public class CardInfoEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**名称*/
	@Excel(name="名称")
	private java.lang.String cardName;
	/**内容*/
	@Excel(name="内容")
	private java.lang.String cardContent;
	
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
	 *@return: java.lang.String  名称
	 */
	@Column(name ="CARD_NAME",nullable=true,length=32)
	public java.lang.String getCardName(){
		return this.cardName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  名称
	 */
	public void setCardName(java.lang.String cardName){
		this.cardName = cardName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  内容
	 */
	@Column(name ="CARD_CONTENT",nullable=true,length=5000)
	public java.lang.String getCardContent(){
		return this.cardContent;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  内容
	 */
	public void setCardContent(java.lang.String cardContent){
		this.cardContent = cardContent;
	}
}
