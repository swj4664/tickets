package com.ticket.biz.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ticket.biz.couponbox.CouponBoxService;
import com.ticket.biz.couponbox.CouponBoxVO;

@Controller
@SessionAttributes("couponbox")
public class CouponBoxController {

	@Autowired
	private CouponBoxService couponBoxService;
	//쿠폰 등록
	@GetMapping(value = "/insertCouponBox")
	public String insertCoupon(CouponBoxVO vo,HttpSession session) throws IllegalStateException, IOException {
	
		vo.setMb_id((String)session.getAttribute("userId"));
		couponBoxService.insertCouponBox(vo);
		return "redirect:getCouponList";

	}
	
	}

	
	
