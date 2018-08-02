package com.project.biz.mybatistest;

import java.util.List;

import com.project.biz.mybatis.MemberDAOMybatis;
import com.project.biz.vo.MemberVO;

public class MemberMybatisTest {
	public static void main(String[] args) {
		
		MemberDAOMybatis memberDAO = new MemberDAOMybatis();
		
		MemberVO vo = new MemberVO();
		vo.setId("kimleepack");
		vo.setPassword("klp999");
		vo.setName("lee");
		vo.setPhone("010-1234-5678");
		memberDAO.insertMember(vo);
		
		List<MemberVO> memberList = memberDAO.getMemberList(vo);
		for(MemberVO member : memberList){
			System.out.println("-->"+member.toString());
		}
	}
}


