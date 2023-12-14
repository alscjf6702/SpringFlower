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

	public List<NoticeVO> getPagingList(Criteria cri); // 특정 페이지에 해당하는 게시글 목록을 반환

	public int TotalCount(Criteria cri); // DB에서 받아올 총 게시물 수

	public void readCount(int num);
}
