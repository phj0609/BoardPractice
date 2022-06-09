package me.hyun.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hyun.AppTest;
import me.hyun.model.Board;

public class BoardServiceImplTest extends AppTest {

	@Autowired
	BoardService service;
	
	@Test
	public void getListTest() {
		List<Board> list = service.getList();
		assertEquals(4, list.size());
	}

}
