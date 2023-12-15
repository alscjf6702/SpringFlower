package com.hwawon.mapper;

import java.util.List;

import com.hwawon.domain.Criteria;
import com.hwawon.domain.NoticeVO;

public interface NoticeMapper {

	public List<NoticeVO> getList();

	public NoticeVO getOne(int num);

	public void insert(NoticeVO vo);

	public void update(NoticeVO vo);

	public void delete(int num);

	public List<NoticeVO> getPagingList(Criteria cri);

	public int TotalCount(Criteria cri);

	public void readCount(int num);
}
