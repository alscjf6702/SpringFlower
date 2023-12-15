package com.hwawon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwawon.domain.MemberVO;
import com.hwawon.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public List<MemberVO> listMember() {
		return mapper.listMember();
	}

	@Override
	public void delMember(int userNum) {
		mapper.delMember(userNum);
	}

	@Override
	public void regiMember(MemberVO vo) {
		mapper.regiMember(vo);
	}

	@Override
	public void updateMember(MemberVO vo) {
		mapper.updateMember(vo);
	}

	@Override
	public int loginMember(String userId) {
		return mapper.loginMember(userId);
	}
}
