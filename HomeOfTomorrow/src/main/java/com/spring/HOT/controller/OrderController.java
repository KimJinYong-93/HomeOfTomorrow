package com.spring.HOT.controller;

import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.command.CartResponseCommand;
import com.spring.HOT.dto.CartVO;
import com.spring.HOT.dto.GoodsVO;
import com.spring.HOT.dto.MemberVO;
import com.spring.HOT.dto.PaymentVO;
import com.spring.HOT.request.OrdersRequest;
import com.spring.HOT.service.CartService;
import com.spring.HOT.service.GoodsService;
import com.spring.HOT.service.OrdersService;
import com.spring.HOT.service.PaymentService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private GoodsService goodsService;
	
	
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

	
	@RequestMapping("/cartList")
	public ModelAndView cartList(String id, ModelAndView mnv) throws Exception {
		String url="/order/basket";
		
		List<CartVO> cartDatas = cartService.getCartListById(id);
		
		CartResponseCommand cartResponseCommand = new CartResponseCommand();
		List<CartResponseCommand> cartList = new ArrayList<CartResponseCommand>();
		int totalPrice = 0;
		for(CartVO cart : cartDatas) {
			GoodsVO goods = new GoodsVO();
			goods = goodsService.selectGoods(cart.getGcode());
			totalPrice += goods.getPrice();
			cartResponseCommand = cartResponseCommand.toParseCartObject(goods, cart);
			cartList.add(cartResponseCommand);
		}
		
		mnv.addObject("totalPrice", totalPrice);
		mnv.addObject("cartList", cartList);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/basketRegist")
	public void basketRegist(CartVO cart, String[] op_list, String[] optionName, HttpServletRequest request, 
								HttpServletResponse response, HttpSession session) throws Exception {
		String opData = "";
		
		for(int i = 0; i < op_list.length; i++) { 
			if(i == 0) {
				opData += optionName[i] + ":" + op_list[i];
			}else {
				opData += "/" + optionName[i] + ":" + op_list[i];
			}
		}
		cart.setOp_choose(opData);
		
		cartService.registBasket(cart);
		int cartSize = (int) session.getAttribute("cartSize") + 1;
		session.setAttribute("cartSize", cartSize);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("if(confirm(\'상품이 장바구니에 담겼습니다. \\n장바구니 페이지로 이동하시겠습니까?\')){");
		out.println("location.href='" + request.getContextPath() + "/order/cartList?id=" + cart.getId() + "';");
		out.println("}else{");
		out.println("history.go(-1);");
		out.println("};");
		out.println("</script>");
		
		out.close();
	}
	
	@RequestMapping("/paySuccess")
	public String paySuccess(String msg) {
		System.out.println(msg);
		String url="/order/paySuccess";
		return url;
	}
	
}
