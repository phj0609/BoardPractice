package me.hyun.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageMaker {

	private Criteria criteria;
	private int startPage;
	private int endPage;
	private int tempEndPage;
	private int totalCount;
	private int displayPageNum = 10;

	private boolean prev;
	private boolean next;
	
	public PageMaker(Criteria criteria, int totalCount) {
		this.criteria = criteria;
		this.totalCount = totalCount;
		endPage = (int) Math.ceil(criteria.getPage() / (double) displayPageNum) * displayPageNum;
		startPage = endPage - displayPageNum + 1;
		tempEndPage = (int) Math.ceil(totalCount / (double) criteria.getPerPageNum()); // 412/10 = 41.2 (42)
		// [1] ~ [10] tempEndPage = 42
		// [11] ~ [20]
		// [40] ~ [50] endPage > tempEndPage
		if(endPage > tempEndPage) endPage = tempEndPage;
		prev = startPage != 1;
		next = endPage < tempEndPage;
	}
}