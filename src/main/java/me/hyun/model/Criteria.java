package me.hyun.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	int page;
	int perPageNum;
	
	String type; 
	String keyword;

	public Criteria() {
		this.page = 1;
		this.perPageNum = 10;
	}

	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	
	// 제목 T 내용 C 작성자 W
	public String[] getTypeCollection() { // #{typeCollection}
//		type.split(""); {T,C} {C,W}
		return type != null ? type.split("") : new String[] {}; 
	}
}
