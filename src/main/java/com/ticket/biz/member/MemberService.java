package com.ticket.biz.member;

import java.util.List;


public interface MemberService {
	/*멤버생성*/
	void insertMember(MemberVO vo);
	
	// 회원목록 조회
	List<MemberVO> getMemberList(MemberVO vo);

	int totalMemberListCnt(MemberVO vo);
}
