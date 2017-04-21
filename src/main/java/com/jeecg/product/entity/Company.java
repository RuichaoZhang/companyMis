package com.jeecg.product.entity;

import java.util.List;

import com.jeecg.card.entity.CardInfoEntity;
import com.jeecg.gonggao.entity.GonggaoEntity;
import com.jeecg.link.entity.LinkageinfoEntity;
import com.jeecg.notice.entity.NoticeInfoEntity;

public class Company {
	private List<NoticeInfoEntity> notices; 
	private List<ProductInfoEntity> products;
	private List<LinkageinfoEntity> linkageinfoEntities;
	private List<GonggaoEntity> gonggaoEntities;
	private CardInfoEntity cardInfoEntity;
	
	
	public CardInfoEntity getCardInfoEntity() {
		return cardInfoEntity;
	}
	public void setCardInfoEntity(CardInfoEntity cardInfoEntity) {
		this.cardInfoEntity = cardInfoEntity;
	}
	public List<GonggaoEntity> getGonggaoEntities() {
		return gonggaoEntities;
	}
	public void setGonggaoEntities(List<GonggaoEntity> gonggaoEntities) {
		this.gonggaoEntities = gonggaoEntities;
	}
	public List<LinkageinfoEntity> getLinkageinfoEntities() {
		return linkageinfoEntities;
	}
	public void setLinkageinfoEntities(List<LinkageinfoEntity> linkageinfoEntities) {
		this.linkageinfoEntities = linkageinfoEntities;
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
