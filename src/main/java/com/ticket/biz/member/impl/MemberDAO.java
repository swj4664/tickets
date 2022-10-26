package com.ticket.biz.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticket.biz.member.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// 멤버등록
	public void insertMember(MemberVO vo) {
		System.out.println(vo);
		mybatis.insert("MemberDAO.insertMember", vo);
	}

	public MemberVO loginCheck(MemberVO vo) {
		return mybatis.selectOne("MemberDAO.login", vo);
	}


	// 회원목록 조회
	public List<MemberVO> getMemberList(MemberVO vo) {
		return mybatis.selectList("MemberDAO.getMemberList", vo);
	}

	// 전체 회원목록 개수
	public int totalMemberListCnt(MemberVO vo) {
		return mybatis.selectOne("MemberDAO.totalMemberListCnt", vo);
	}


}
