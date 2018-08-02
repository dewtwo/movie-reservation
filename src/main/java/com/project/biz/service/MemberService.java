package com.project.biz.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.project.biz.vo.MemberVO;

public interface MemberService {

//	public List<MemberVO> getMemberList(MemberVO vo);

	// public MemberVO getOne(MemberVO vo);

	public MemberVO loginCheck(MemberVO vo, HttpSession session);

	public boolean joinMember(MemberVO vo);

	public String insertCheck(MemberVO vo);

	public MemberVO searchId(MemberVO vo);

	public MemberVO searchPwd(MemberVO vo);
	
	public void logout(HttpSession session);

}
