package com.hwawon.domain;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class PageDTO {

	private int startPage, endPage, realEnd;
	private boolean prev, next;
	private int total; // 전체 게시물 수
	private Criteria cri;

	public PageDTO(Criteria cri, int total) {
		this.cri = cri; // 11
		this.total = total; // 120
  
		endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10; // 12
		startPage = endPage - 9; // 11

		realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount())); // 12
		if (realEnd < endPage)
			endPage = realEnd;

		prev = startPage > 1;
		next = endPage < realEnd;

	}

}
