package com.ticket.biz.couponbox.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticket.biz.coupon.CouponVO;
import com.ticket.biz.couponbox.CouponBoxVO;


@Repository
public class CouponBoxDAO {

	@Autowired
    private	SqlSessionTemplate mybatis;

	//CRUD 메소드 구현
			//쿠폰받기
			public void insertCouponBox(CouponBoxVO vo) {
				mybatis.insert("CouponBoxDAO.insertCouponBox",vo);
			}

			//쿠폰사용
			public void updateCouponBox(CouponBoxVO vo) {
				// TODO Auto-generated method stub
				mybatis.update("CouponBoxDAO.updateCouponBox",vo);
			}
			//쿠폰체크
			public CouponBoxVO getCouponBox(CouponBoxVO vo) {
				return (CouponBoxVO)mybatis.selectOne("CouponBoxDAO.getCouponBox",vo);
			}
}
