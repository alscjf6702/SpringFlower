package com.hwawon.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hwawon.domain.NoticeVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeMapperTest {

	@Autowired
	private NoticeMapper mapper;

	@Test
	public void testGetList() {
		mapper.getList().forEach(list -> log.info(list));
	}

	@Test
	public void testGetOne() {
		mapper.getOne(3);
	}

	@Test
	public void testInsert() {
		NoticeVO vo = NoticeVO.builder()
				.title("엉금")
				.content("엉금엉금")
				.writer("관리자")
				.build();
		mapper.insert(vo);
	}

	@Test
	public void testUpdate() {
		NoticeVO vo = NoticeVO.builder()
				.title("11")
				.content("11")
				.num(123)
				.build();
		mapper.update(vo);
	}

	@Test
	public void testDelete() {
		mapper.delete(4);
		}
}
