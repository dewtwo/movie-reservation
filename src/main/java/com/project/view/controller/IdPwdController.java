package com.project.view.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.biz.service.MemberService;
import com.project.biz.vo.MemberVO;

@Controller
public class IdPwdController {
	@Resource(name = "memberService")
	private MemberService memberService;

	// @RequestMapping("/idPwdPage.do")
	// public String getMemberList(MemberVO vo, Model model){
	// model.addAttribute("memberList", memberService.getMemberList(vo));
	// return "idPwd";
	// }

	@RequestMapping("/idPwdPage.do")
	public String idPwdPage() {
		return "idPwd";
	}

	@RequestMapping("/searchId.do")
	public ModelAndView searchId(@ModelAttribute MemberVO vo) {
		MemberVO result = memberService.searchId(vo);
		ModelAndView mav = new ModelAndView();
		if (result != null) {
			mav.addObject("msg1", "success");
			mav.setViewName("idPwd");
			mav.addObject("msg1name", memberService.searchId(vo).getName());
			mav.addObject("msg1id", memberService.searchId(vo).getId());
		} else {
			mav.addObject("msg1", "failure");
			mav.setViewName("idPwd");
		}
		return mav;
	}

	@RequestMapping("/searchPwd.do")
	public ModelAndView searchPwd(@ModelAttribute MemberVO vo) {
		MemberVO result = memberService.searchPwd(vo);
		ModelAndView mav = new ModelAndView();
		if (result != null) {
			mav.addObject("msg2", "success");
			mav.setViewName("idPwd");
			mav.addObject("msg2id", memberService.searchPwd(vo).getId());
			mav.addObject("msg2password", memberService.searchPwd(vo).getPassword());
		} else {
			mav.addObject("msg2", "failure");
			mav.setViewName("idPwd");
		}
		return mav;
	}

}
