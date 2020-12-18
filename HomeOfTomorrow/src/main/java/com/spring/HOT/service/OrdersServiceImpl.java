package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.spring.HOT.dao.GoodsDAO;
import com.spring.HOT.dao.Order_bdDAO;
import com.spring.HOT.dao.OrdersDAO;
import com.spring.HOT.dto.GoodsVO;
import com.spring.HOT.dto.OrdersVO;
import com.spring.HOT.dto.Order_bdVO;
import com.spring.HOT.request.OrderDetailRequest;
import com.spring.HOT.request.OrdersRequest;

public class OrdersServiceImpl implements OrdersService {
	
	private OrdersDAO ordersDAO;
	public void setOrdersDAO(OrdersDAO ordersDAO) {
		this.ordersDAO = ordersDAO;
	}
	
	private Order_bdDAO order_bdDAO;
	public void setOrder_dbDAO(Order_bdDAO order_bdDAO) {
		this.order_bdDAO = order_bdDAO;
	}
	
	private GoodsDAO goodsDAO;
	public void setGoodsDAO(GoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}
	
	
	
	@Override
	public List<OrdersRequest> getMyOrders(String id) throws SQLException {
		List<OrdersRequest> myOrders = new ArrayList<OrdersRequest>();
		
		List<OrdersVO> ordersList = ordersDAO.selectOrders(id);
		for(OrdersVO orders : ordersList ) {
			OrdersRequest ordersRequest = new OrdersRequest();
			List<OrderDetailRequest> orderDetailList = new ArrayList<>(); 
			List<Order_bdVO> order_bdList = order_bdDAO.selectOrder_bd(orders.getOcode());
			for(Order_bdVO order_bd : order_bdList) {
				OrderDetailRequest orderDetail = new OrderDetailRequest();//order_bd, goods
				orderDetail.setOrder_bd(order_bd);
				GoodsVO goods = goodsDAO.selectGoods(order_bd.getGcode());
				orderDetail.setGoods(goods);
				
				orderDetailList.add(orderDetail);
			}
			ordersRequest.setOrders(orders);
			ordersRequest.setOrderdetail(orderDetailList);
			myOrders.add(ordersRequest);
		}
		
		return myOrders;
	}
	 
	

}
