package com.project.view.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.project.biz.service.MemberService;
import com.project.biz.vo.MemberVO;

@Controller
public class LoginController {
	@Resource(name = "memberService")
	private MemberService memberService;

	// @RequestMapping("/loginPage.do")
	// public String loginMain(MemberVO vo, Model model) {
	// model.addAttribute("memberList", memberService.getMemberList(vo));
	// return "login";
	// }

	@RequestMapping("/loginPage.do")
	public String loginPage() {
		return "login";
	}

	@RequestMapping("/myPage.do")
	public String myPage() {
		return "myPage";
	}

	@RequestMapping("/loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session) {
		MemberVO result = memberService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		if (result != null) {
			mav.setViewName("login");
			mav.addObject("msg", "success");
			mav.addObject("id", vo.getId());
		} else {
			mav.setViewName("login");
			mav.addObject("msg", "failure");
		}
		return mav;
	}

	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpSession session) {
		memberService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}

}
