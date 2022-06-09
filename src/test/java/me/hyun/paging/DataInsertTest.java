package me.hyun.paging;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.hyun.AppTest;
import me.hyun.mapper.BoardMapper;
import me.hyun.model.Board;

public class DataInsertTest  extends AppTest{

	@Autowired
	BoardMapper mapper;
	
	@Test
	public void dataInsert() {
		
		for (int i = 1; i <= 412; i++) {
			Board board = new Board();
			board.setTitle("페이징 처리 연습" + i);
			board.setContent("내용 페이징 처리 연습" + i);
			board.setWriter("작성자");
			mapper.insert(board);
			
		}
	}
}
