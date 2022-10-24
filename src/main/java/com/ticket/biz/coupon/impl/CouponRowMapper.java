package com.ticket.biz.coupon.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.ticket.biz.coupon.CouponVO;

public class CouponRowMapper implements RowMapper<CouponVO> {
	
	
	@Override
	public CouponVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		CouponVO coupon = new CouponVO();
		coupon.setC_NUM(rs.getInt("c_num"));
		coupon.setC_NAME(rs.getString("c_name"));
		coupon.setC_PER(rs.getInt("c_per"));
		
		return coupon;
	}

}
