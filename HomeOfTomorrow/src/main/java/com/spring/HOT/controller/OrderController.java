package com.spring.HOT.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.dto.MemberVO;
import com.spring.HOT.dto.PaymentVO;
import com.spring.HOT.request.OrdersRequest;
import com.spring.HOT.service.OrdersService;
import com.spring.HOT.service.PaymentService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private PaymentService paymentService;
	
	
	@RequestMapping("/list")
	public ModelAndView orderList(HttpSession session, ModelAndView mnv) {
		String url="order/list";
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		String userId = loginUser.getId();
		
		try {
			List<OrdersRequest> myOrders = ordersService.getMyOrders(userId);
			
			int step1 = 0;
			int step2 = 0;
			int step3 = 0;
			int step4 = 0;
			int step5 = 0;
			int step6 = 0;
			
			for(OrdersRequest order :  myOrders) {
				if(order.getOrders().getOstatus().equals("입금대기")) {
					step1++;
				}else if(order.getOrders().getOstatus().equals("결제완료")) {
					step2++;
				}else if(order.getOrders().getOstatus().equals("배송준비")) {
					step3++;
				}else if(order.getOrders().getOstatus().equals("배송중")) {
					step4++;
				}else if(order.getOrders().getOstatus().equals("배송완료")) {
					step5++;
				}else {
					step6++;
				}
			}

			mnv.addObject("myOrders" , myOrders);
			mnv.addObject("step1" , step1);
			mnv.addObject("step2" , step2);
			mnv.addObject("step3" , step3);
			mnv.addObject("step4" , step4);
			mnv.addObject("step5" , step5);
			mnv.addObject("step6" , step6);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		mnv.setViewName(url);
		
		return mnv;
	}
	
	
	
	
	
	@RequestMapping("/detail")
	public ModelAndView detail(String ocode, ModelAndView mnv) {
		String url = "order/detail";
		
		try {
			OrdersRequest orderDetail = ordersService.getOrderDetail(ocode);
			PaymentVO payment = paymentService.getPayment(ocode);
			
			mnv.addObject("orderDetail", orderDetail);
			mnv.addObject("payment", payment);
			mnv.setViewName(url);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return mnv;
	}

}
