package com.ticket.biz.member.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticket.biz.member.MemberService;
import com.ticket.biz.member.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public MemberVO loginCheck(MemberVO vo) {
		return memberDAO.loginCheck(vo);
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub

	}

	@Override
	public void insertMember(MemberVO vo) {
		memberDAO.insertMember(vo);
	}

	// 회원목록
	@Override
	public List<MemberVO> getMemberList(MemberVO vo) {
		return memberDAO.getMemberList(vo);
	}

	@Override
	public int totalMemberListCnt(MemberVO vo) {
		return memberDAO.totalMemberListCnt(vo);
	}

}
