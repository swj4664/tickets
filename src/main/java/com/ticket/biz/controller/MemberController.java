package com.ticket.biz.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ticket.biz.common.PagingVO;
import com.ticket.biz.member.MemberService;
import com.ticket.biz.member.MemberVO;

@Controller
@SessionAttributes("member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	// 회원 검색
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("아이디", "MB_ID");
		conditionMap.put("이름", "MB_NAME");
		conditionMap.put("전화번호", "MB_PHONE");
		conditionMap.put("이메일", "MB_EMAIL");
		return conditionMap;
	}
	
	//멤버등록
	@RequestMapping(value="/insertMember", method=RequestMethod.POST)
	public String insertMember(MemberVO vo) throws IllegalStateException {
		memberService.insertMember(vo);
		return "redirect:index.jsp";
	}
	
	//관리자 회원조회
	@RequestMapping("/getMemberList")
	public String getMemberListPost(MemberVO vo, String nowPageBtn, Model model) {
		System.out.println("회원목록 검색 처리");

		// 총 목록 수
		int totalPageCnt = memberService.totalMemberListCnt(vo);

		// 현재 페이지 설정
		int nowPage = Integer.parseInt(nowPageBtn == null || nowPageBtn.equals("") ? "1" : nowPageBtn);
		System.out.println("totalPageCnt: " + totalPageCnt + ", nowPage: " + nowPage);

		// 한페이지당 보여줄 목록 수
		int onePageCnt = 10;

		// 한 번에 보여질 버튼 수
		int oneBtnCnt = 5;

		PagingVO pvo = new PagingVO(totalPageCnt, onePageCnt, nowPage, oneBtnCnt);
		vo.setOffset(pvo.getOffset());

		model.addAttribute("paging", pvo);
		model.addAttribute("memberList", memberService.getMemberList(vo));
		return "admin/getMemberList";
	}

}
