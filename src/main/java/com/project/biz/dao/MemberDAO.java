package com.project.biz.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.project.biz.vo.MemberVO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	// public List<MemberVO> getMemberList(MemberVO vo) {
	// return sqlSession.selectList("member.getMemberList", vo);
	// }

	// public MemberVO getOne(MemberVO vo) {
	// return sqlSession.selectOne("member.getMemberList", vo);
	// }

	public MemberVO loginCheck(MemberVO vo) {
		MemberVO result = sqlSession.selectOne("member.loginCheck", vo);
		return result;
	}

	public boolean joinMember(MemberVO vo) {
		String test = sqlSession.selectOne("member.insertCheck", vo);
		if (test == null) {
			sqlSession.insert("member.insertMember", vo);
			return true;
		} else {
			return false;
		}
	}

	public String insertCheck(MemberVO vo) {
		String test = sqlSession.selectOne("member.insertCheck", vo);
		return test;
	}

	public MemberVO searchId(MemberVO vo) {
		MemberVO id = sqlSession.selectOne("member.searchId", vo);
		return id;
	}

	public MemberVO searchPwd(MemberVO vo) {
		MemberVO pwd = sqlSession.selectOne("member.searchPwd", vo);
		return pwd;

	}

	public void logout(HttpSession session) {
	}

	// public MemberVO getMember(MemberVO vo) {
	// return sqlSession.selectOne("member.getMember", vo);
	// }
}
