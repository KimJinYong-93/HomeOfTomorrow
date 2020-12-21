package com.spring.HOT.controller;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.HOT.command.PaymentRequestCommand;
import com.spring.HOT.dto.GoodsVO;
import com.spring.HOT.dto.MemberNVO;
import com.spring.HOT.dto.Order_bdVO;
import com.spring.HOT.dto.OrdersVO;
import com.spring.HOT.dto.PaymentVO;
import com.spring.HOT.service.CartService;
import com.spring.HOT.service.GoodsService;
import com.spring.HOT.service.Order_bdService;
import com.spring.HOT.service.OrdersService;
import com.spring.HOT.service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired 
	private PaymentService paymentService;
	
	@Autowired
	private Order_bdService order_bdService;
	
	@RequestMapping("/payment/kakaoPay")
	public String kakaoPay() {
		String url = "payment/kakaoPay";
		return url;
	}
	
	@RequestMapping("/payment/complete")
	@ResponseBody
	public ResponseEntity<GoodsVO> complete(PaymentRequestCommand prc, HttpSession session) throws Exception{
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		Date time = new Date();
		String date = format.format(time);
		String payUUID = String.format("%040d", new BigInteger(UUID.randomUUID().toString().replace("-", ""), 16));
		prc.setOcode(date + "_" + payUUID.substring(0, 8));
	
		MemberNVO memberN = new MemberNVO();
		memberN = (MemberNVO) session.getAttribute("loginUserDetail");
		
		OrdersVO orders = new OrdersVO();
		Order_bdVO order_bd = new Order_bdVO();
		PaymentVO pay = new PaymentVO();
		
		String gcode = prc.getGcode();
		List<String> gcodes = Arrays.asList(gcode.split("/"));
		
		String vol = prc.getVol();
		List<String> volums = Arrays.asList(vol.split("/"));
		
		String op_choose = prc.getOp_choose();
		List<String> op_chooses = Arrays.asList(op_choose.split(","));
		
		orders = prc.toParseOrdersVO(memberN.getId());
		ordersService.regist(orders);
		
		for(int i = 0; i < gcodes.size(); i++) {
			prc.setGcode(gcodes.get(i));
			prc.setVol(volums.get(i));
			prc.setOp_choose(op_chooses.get(i));
			cartService.remove(memberN.getId(), gcodes.get(i), op_chooses.get(i));
			order_bd = prc.toParseOrder_bdVO(memberN.getId());
			order_bdService.regist(order_bd);
		}
		
		int cartSize = (int) session.getAttribute("cartSize") - gcodes.size();
		session.setAttribute("cartSize", cartSize);
		
		pay = prc.toParsePaymentVO(memberN);
		paymentService.regist(pay);
		
		ResponseEntity<GoodsVO> entity = null;
		
		return entity;
	}
	
}
