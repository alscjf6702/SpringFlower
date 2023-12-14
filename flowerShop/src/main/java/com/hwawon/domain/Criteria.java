package com.hwawon.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	
	private int pageNum; // 페이지번호
	private int amount; // 한페이지에 나타낼 게시물 개수
	
	private String type; //검색 타입 ( 제목, 내용, 작성자 등)
	private String keyword; //key 검색어
	
	public Criteria() {
		this(1, 10);
	}

	public Criteria(int pageNum, int amount) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public int getNewStart() {
		return pageNum < 1 ? 0 : (pageNum - 1) * amount;
	}
	
}