package com.hwawon.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private int pageNum; 
	private int amount; 

	private String type; 
	private String keyword;

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