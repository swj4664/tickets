package com.ticket.biz.coupon.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticket.biz.coupon.CouponVO;


@Repository
public class CouponDAO {

	@Autowired
    private	SqlSessionTemplate mybatis;

	//CRUD 메소드 구현
		//쿠폰등록
			public void insertCoupon(CouponVO vo) {
				mybatis.insert("CouponDAO.insertCoupon",vo);
			}
			//쿠폰수정
			public void updateCoupon(CouponVO vo) {
				mybatis.update("CouponDAO.updateCoupon",vo);
			}

			//쿠폰삭제
			public void deleteCoupon(CouponVO vo) {
				mybatis.delete("CouponDAO.deleteCoupon",vo);
			}

			//쿠폰목록 조회
			public List<CouponVO> getCouponList(CouponVO vo) {
				return mybatis.selectList("CouponDAO.getCouponList",vo);
			}
			//전체 쿠폰 개수
			public int totalCouponListCnt(CouponVO vo) {
					return mybatis.selectOne("CouponDAO.totalCouponListCnt",vo);
			}
			public CouponVO getCoupon(CouponVO vo) {
				return (CouponVO) mybatis.selectOne("CouponDAO.getCoupon",vo);
			}
}
