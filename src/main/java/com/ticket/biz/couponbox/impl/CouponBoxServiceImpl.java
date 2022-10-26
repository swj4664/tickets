package com.ticket.biz.couponbox.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticket.biz.couponbox.CouponBoxService;
import com.ticket.biz.couponbox.CouponBoxVO;

@Service("couponBoxService")
public class CouponBoxServiceImpl implements CouponBoxService {

	@Autowired
	private CouponBoxDAO couponDAO;

	//쿠폰받기
	@Override
	public void insertCouponBox(CouponBoxVO vo) {
		couponDAO.insertCouponBox(vo);
	}


	//쿠폰사용
	@Override
	public void updateCouponBox(CouponBoxVO vo) {
		couponDAO.updateCouponBox(vo);
	}

	//쿠폰체크
	@Override
	public CouponBoxVO getCouponBox(CouponBoxVO vo) {
		return couponDAO.getCouponBox(vo);
	}

}
