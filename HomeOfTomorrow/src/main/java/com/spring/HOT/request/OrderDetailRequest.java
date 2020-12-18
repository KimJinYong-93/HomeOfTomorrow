package com.spring.HOT.request;

import com.spring.HOT.dto.GoodsVO;
import com.spring.HOT.dto.Order_bdVO;

public class OrderDetailRequest {
	                           
	private Order_bdVO order_bd;
	private GoodsVO goods;
	
	public Order_bdVO getOrder_bd() {
		return order_bd;
	}
	public void setOrder_bd(Order_bdVO order_bd) {
		this.order_bd = order_bd;
	}
	public GoodsVO getGoods() {
		return goods;
	}
	public void setGoods(GoodsVO goods) {
		this.goods = goods;
	}
	
	
	@Override
	public String toString() {
		return "OrderDetailRequest [order_bd=" + order_bd + ", goods=" + goods + "]";
	}
	
	
	
	
	
	
	

}
