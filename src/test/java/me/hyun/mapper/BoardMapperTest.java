package me.hyun.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.hyun.AppTest;
import me.hyun.model.Board;

public class BoardMapperTest extends AppTest {

	@Autowired
	private BoardMapper boardMapper;
	
	@Test
	public void getListTest() {
		List<Board> list = boardMapper.getList();
		assertEquals(4, list.size());
	}

}
