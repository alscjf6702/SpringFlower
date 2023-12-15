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
		mapper.listMember().forEach(list -> log.info(list));
	}

	@Test
	public void regiMember() {
		MemberVO vo = MemberVO.builder()
				.userId("asd6702")
				.userNick("백곰")
				.userName("김아무개")
				.pwd("1234")
				.email("asdf@naver.com")
				.phone("010-4414-1244")
				.postCode(41424)
				.address("수원시")
				.ssn("123123123")
				.build();
		mapper.regiMember(vo);
	}
	
	@Test
	public void updateMember() {
		MemberVO vo = MemberVO.builder()
				.pwd("1111")
				.email("bbbb@bbb.com")
				.phone("010-5515-1231")
				.postCode(9999)
				.address("경기도")
				.userNum(18)
				.build();
		mapper.updateMember(vo);
	}

	@Test
	public void delMember() {
		mapper.delMember(12);
	}
}
