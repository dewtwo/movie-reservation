package com.project.view.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.biz.service.MemberService;
import com.project.biz.vo.MemberVO;

@Controller
public class JoinController {
	@Resource(name = "memberService")
	private MemberService memberService;

	// @RequestMapping("/joinPage.do")
	// public String getMemberList(MemberVO vo, Model model) {
	// model.addAttribute("memberList", memberService.getMemberList(vo));
	// return "join";
	// }

	@RequestMapping("/joinPage.do")
	public String joinPage() {
		return "join";
	}

	@RequestMapping("/insertMember.do")
	public ModelAndView insertMember(@ModelAttribute MemberVO vo) {
		boolean result = memberService.joinMember(vo);
		ModelAndView mav = new ModelAndView();
		if (result == true) {
			mav.setViewName("join");
			mav.addObject("msg", "success");
		} else {
			mav.setViewName("join");
			mav.addObject("msg", "failure");
		}
		return mav;
	}

	@RequestMapping("/insertCheck.do")
	public ModelAndView insertCheck(@ModelAttribute MemberVO vo) {
		String result = memberService.insertCheck(vo);
		ModelAndView mav = new ModelAndView();
		if (result == null) {
			mav.setViewName("join");
			mav.addObject("inform", "success");
			mav.addObject("tmp", vo.getId());
		} else {
			mav.setViewName("join");
			mav.addObject("inform", "failure");
		}
		return mav;
	}
}
