package com.jeecg.product.entity;

import java.util.List;

import com.jeecg.card.entity.CardInfoEntity;
import com.jeecg.gonggao.entity.GonggaoEntity;
import com.jeecg.link.entity.LinkageinfoEntity;
import com.jeecg.notice.entity.NoticeInfoEntity;

public class Company {
	private String company_name;
	private String company_card;
	String notice;
	private List<NoticeInfoEntity> notices; 
	private List<ProductInfoEntity> products;
	private List<LinkageinfoEntity> linkageinfoEntities;
	private GonggaoEntity gonggaoEntity;
	private CardInfoEntity cardInfoEntity;
	
	
	public CardInfoEntity getCardInfoEntity() {
		return cardInfoEntity;
	}
	public void setCardInfoEntity(CardInfoEntity cardInfoEntity) {
		this.cardInfoEntity = cardInfoEntity;
	}
	public GonggaoEntity getGonggaoEntity() {
		return gonggaoEntity;
	}
	public void setGonggaoEntity(GonggaoEntity gonggaoEntity) {
		this.gonggaoEntity = gonggaoEntity;
	}
	public List<LinkageinfoEntity> getLinkageinfoEntities() {
		return linkageinfoEntities;
	}
	public void setLinkageinfoEntities(List<LinkageinfoEntity> linkageinfoEntities) {
		this.linkageinfoEntities = linkageinfoEntities;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_card() {
		return company_card;
	}
	public void setCompany_card(String company_card) {
		this.company_card = company_card;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	public List<NoticeInfoEntity> getNotices() {
		return notices;
	}
	public void setNotices(List<NoticeInfoEntity> notices) {
		this.notices = notices;
	}
	public List<ProductInfoEntity> getProducts() {
		return products;
	}
	public void setProducts(List<ProductInfoEntity> products) {
		this.products = products;
	}
	
}
