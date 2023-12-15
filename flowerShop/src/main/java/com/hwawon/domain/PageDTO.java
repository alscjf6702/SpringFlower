package com.hwawon.domain;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class PageDTO {

	private int startPage, endPage, realEnd;
	private boolean prev, next;
	private int total; 
	private Criteria cri;

	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total; 

		endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10; 
		startPage = endPage - 9;

		realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount())); 
		if (realEnd < endPage)
			endPage = realEnd;

		prev = startPage > 1;
		next = endPage < realEnd;
	}
}
