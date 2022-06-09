package me.hyun.mapper;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.hyun.AppTest;

public class TotalCountTest extends AppTest{

	@Autowired
	BoardMapper mapper;
	
	@Test
	public void test() {
		assertEquals(412, mapper.totalCount());
	}
}
