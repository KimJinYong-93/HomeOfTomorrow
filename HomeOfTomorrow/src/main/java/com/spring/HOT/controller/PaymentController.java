package com.spring.HOT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.HOT.dto.GoodsVO;
import com.spring.HOT.service.GoodsService;

@Controller
public class PaymentController {
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("/payment/kakaoPay")
	public String kakaoPay() {
		String url = "payment/kakaoPay";
		return url;
	}
	
	@RequestMapping("/payment/complete")
	@ResponseBody
	public ResponseEntity<GoodsVO> complete(GoodsVO goods) throws Exception{
		
		//System.out.println(buyer_name);
		//System.out.println(buyer_tel);
		
		System.out.println(goods.getGname());
		System.out.println(goods.getPrice());
		//GoodsVO goods = goodsService.g
		
		ResponseEntity<GoodsVO> entity = null;
		
		return entity;
	}
	
}
