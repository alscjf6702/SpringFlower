package com.hwawon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwawon.domain.Criteria;
import com.hwawon.domain.NoticeVO;
import com.hwawon.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeMapper mapper;

	@Override
	public List<NoticeVO> getList() {
		return mapper.getList();
	}

	@Override
	public NoticeVO getOne(int num) {
		return mapper.getOne(num);
	}

	@Override
	public void insert(NoticeVO vo) {
		mapper.insert(vo);
	}

	@Override
	public void update(NoticeVO vo) {
		mapper.update(vo);
	}

	@Override
	public void delete(int num) {
		mapper.delete(num);
	}

	@Override
	public List<NoticeVO> getPagingList(Criteria cri) {
		return mapper.getPagingList(cri);
	}

	@Override
	public int TotalCount(Criteria cri) {
		return mapper.TotalCount(cri);
	}

	@Override
	public void readCount(int num) {
		mapper.readCount(num);
	}
}
