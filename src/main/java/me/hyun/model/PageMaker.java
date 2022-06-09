package me.hyun.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageMaker {

	private Criteria criteria;
	private int startPage;
	private int endPage;
	
	private int displayPageNum = 10;

	public PageMaker(Criteria criteria) {
		this.criteria = criteria;
		endPage = (int) Math.ceil(criteria.getPage() / (double) displayPageNum) * displayPageNum;
		startPage = endPage - displayPageNum + 1;
	}

}
