package com.spring.HOT.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.HOT.command.Kakaopay;

import lombok.Setter;
import lombok.extern.java.Log;

@Log
@Controller
public class KaKaoPayController {
	
	//@Setter(onMethod_=@Autowired)
    private Kakaopay kakaopay;
    
	private Logger log = LoggerFactory.getLogger(Kakaopay.class);
    
    @GetMapping("/kakaoPay")
    public void kakaoPayGet() {
        
    }
    
    @PostMapping("/kakaoPay")
    public String kakaoPay() {
        log.info("kakaoPay post............................................");
        
        return "redirect:" + kakaopay.kakaoPayReady();
 
    }
    
    @GetMapping("/kakaoPaySuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
        log.info("kakaoPaySuccess get............................................");
        log.info("kakaoPaySuccess pg_token : " + pg_token);
        
    }
	
}
