package com.ticket.biz.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticket.biz.member.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//멤버등록
	public void insertMember(MemberVO vo) {
		System.out.println(vo);
		mybatis.insert("MemberDAO.insertMember",vo); 
	}

}
