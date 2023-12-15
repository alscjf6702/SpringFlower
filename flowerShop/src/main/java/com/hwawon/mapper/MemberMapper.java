package com.hwawon.mapper;

import java.util.List;

import com.hwawon.domain.MemberVO;

public interface MemberMapper {

	public List<MemberVO> listMember();
	
	public void delMember(int userNum);

	public void regiMember(MemberVO vo);
	
	public void updateMember(MemberVO vo);
	
	public int loginMember(String userId);
}
