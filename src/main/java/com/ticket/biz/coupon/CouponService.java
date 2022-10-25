package com.ticket.biz.coupon;

import java.util.List;

public interface CouponService {
	//CRUD 기능의 메소드 구현
		//쿠폰등록
		void insertCoupon(CouponVO vo);

		//쿠폰수정
		void updateCoupon(CouponVO vo);

		//쿠폰삭제
		void deleteCoupon(CouponVO vo);

		//쿠폰 조회
		List<CouponVO> getCouponList(CouponVO vo);

		//쿠폰갯수
		int totalCouponListCnt (CouponVO vo);
		//쿠폰 검색
		CouponVO getCoupon(CouponVO vo);
}
