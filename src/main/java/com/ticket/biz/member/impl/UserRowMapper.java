package com.ticket.biz.member.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.ticket.biz.member.MemberVO;

public class UserRowMapper implements RowMapper<MemberVO>{
	
	@Override
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException{
		MemberVO user = new MemberVO();
		user.setMb_id(rs.getString("mb_id"));
		user.setMb_pw(rs.getString("mb_pw"));
		user.setMb_name(rs.getString("mb_name"));
		
		System.out.println("rowNum: " + rowNum + " / board: " + user);
		return user;
	}


}
