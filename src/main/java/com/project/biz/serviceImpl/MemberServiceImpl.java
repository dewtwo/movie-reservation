package com.project.biz.serviceImpl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.biz.dao.MemberDAO;
import com.project.biz.service.MemberService;
import com.project.biz.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
   @Autowired
   private MemberDAO memberDao;

   // @Override
   // public List<MemberVO> getMemberList(MemberVO vo) {
   // return memberDao.getMemberList(vo);
   // }

   // public MemberVO getOne(MemberVO vo) {
   // return memberDao.getOne(vo);
   // }

   @Override
   public MemberVO loginCheck(MemberVO vo, HttpSession session) {
      MemberVO result = memberDao.loginCheck(vo);
      if (result != null) {
         session.setAttribute("name", result.getName());
         session.setAttribute("id", result.getId());
         session.setAttribute("password", result.getPassword());
         return result;
      }
      return result;
   }

   @Override
   public boolean joinMember(MemberVO vo) {
      boolean result = memberDao.joinMember(vo);
      if (result == true) {
         return true;
      } else {
         return false;
      }
   }

   @Override
   public String insertCheck(MemberVO vo) {
      String result = memberDao.insertCheck(vo);
      return result;
   }

   @Override
   public MemberVO searchId(MemberVO vo) {
      MemberVO result = memberDao.searchId(vo);
      return result;
   }

   @Override
   public MemberVO searchPwd(MemberVO vo) {
      MemberVO result = memberDao.searchPwd(vo);
      return result;
   }

   @Override
   public void logout(HttpSession session) {
      session.invalidate();

   }
}