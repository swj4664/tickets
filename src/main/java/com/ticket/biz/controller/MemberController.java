package com.ticket.biz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ticket.biz.member.MemberService;
import com.ticket.biz.member.MemberVO;

@Controller
@SessionAttributes("member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	//멤버등록
	@RequestMapping(value="/insertMember", method=RequestMethod.POST)
	public String insertMember(MemberVO vo) throws IllegalStateException {
		memberService.insertMember(vo);
		return "redirect:index.jsp";
	}

}
