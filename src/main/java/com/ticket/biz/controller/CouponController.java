package com.ticket.biz.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ticket.biz.common.PagingVO;
import com.ticket.biz.coupon.CouponService;
import com.ticket.biz.coupon.CouponVO;

@Controller
@SessionAttributes("coupon")
public class CouponController {

	@Autowired
	private CouponService couponService;
	//쿠폰 등록
	@PostMapping(value = "/insertCoupon")
	public String insertCoupon(CouponVO vo) throws IllegalStateException, IOException {
		couponService.insertCoupon(vo);
		return "getCouponList.do";
	}

	// 쿠폰 수정
	@RequestMapping("/updateCoupon")
	public String updateCoupon(@ModelAttribute("coupon") CouponVO vo, HttpSession session) {
		String name="관리자";
		if( name.equals(session.getAttribute("userName").toString()) ){
			couponService.updateCoupon(vo);
			return "getCouponList.do";
		}else {
			return "getCouponList.do?error=1";
		}
		
	}

	// 쿠폰 삭제
	@RequestMapping("/deleteCoupon")
	public String deleteCoupon(CouponVO vo, HttpSession session) {
		vo = couponService.getCoupon(vo);
		couponService.deleteCoupon(vo);
			return "getCouponList.do";
		
//			return "getCouponList.do?error=1";
		
	}



	// 글 목록
	@RequestMapping("/getCouponList")
	public String getCouponListPost(CouponVO vo, String nowPageBtn, Model model) {
		
		//총 목록 수 
		int totalPageCnt = couponService.totalCouponListCnt(vo);
		
		//현재 페이지 설정 
		int nowPage = Integer.parseInt(nowPageBtn==null || nowPageBtn.equals("") ? "1" :nowPageBtn);
		System.out.println("totalPageCnt: "+totalPageCnt +", nowPage: "+nowPage);
		
		//한페이지당 보여줄 목록 수
		int onePageCnt = 10;
		
		//한 번에 보여질 버튼 수
		int oneBtnCnt = 5;
		
		PagingVO pvo = new PagingVO(totalPageCnt, onePageCnt, nowPage, oneBtnCnt);
		vo.setOffset(pvo.getOffset());
		
		
		model.addAttribute("paging", pvo);
		model.addAttribute("couponList", couponService.getCouponList(vo));
		return "coupon/getCouponList";
	}
	

	
	
	
}
