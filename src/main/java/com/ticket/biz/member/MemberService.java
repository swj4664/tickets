package com.ticket.biz.member;

import java.util.List;

import javax.servlet.http.HttpSession;


public interface MemberService {
	/*멤버생성*/
	void insertMember(MemberVO vo);
	public MemberVO loginCheck(MemberVO vo);
	public void logout(HttpSession session);

	// 회원목록 조회
	List<MemberVO> getMemberList(MemberVO vo);

	int totalMemberListCnt(MemberVO vo);
}
