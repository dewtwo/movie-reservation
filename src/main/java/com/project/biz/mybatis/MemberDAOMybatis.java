package com.project.biz.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.project.biz.util.SqlSessionFactoryBean;
import com.project.biz.vo.MemberVO;

public class MemberDAOMybatis {
	private SqlSession mybatis;
	
	public MemberDAOMybatis(){
		mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	public void insertMember(MemberVO vo){
		mybatis.insert("MemberDAO.insertMember",vo);
		mybatis.commit();
	}
	
	public MemberVO getMember(MemberVO vo){
		return mybatis.selectOne("MemberDAO.getMember",vo);
	}
	
	public List<MemberVO> getMemberList(MemberVO vo){
		return mybatis.selectList("MemberDAO.getMemberList",vo);
	}
}
