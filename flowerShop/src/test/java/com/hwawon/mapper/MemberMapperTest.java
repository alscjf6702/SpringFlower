package com.hwawon.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hwawon.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTest {

	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void listMember() {
		mapper.listMember().forEach(list-> log.info(list));
	}
	
	@Test
	public void regiMember() {
		MemberVO vo = MemberVO.builder()
				.userId("asd6702")
				.userNick("肄붿쿋�씠")
				.userName("源�誘쇱쿋")
				.pwd("alscjf11")
				.phone("010-4414-1244")
				.postCode(41424)
				.address("寃쎄린�룄 �닔�썝�떆")
				.build();
		mapper.regiMember(vo);
	}
	
	@Test
	public void updateMember() {
		MemberVO vo = MemberVO.builder()
				.pwd("alal11")
				.phone("010-5515-1231")
				.postCode(55152)
				.address("寃쎄린�룄 �꽦�궓�떆")
				.userNum(1)
				.build();
		mapper.updateMember(vo);
	}

	@Test
	public void delMember() {
		mapper.delMember(1);
	}
	
}
