package me.hyun.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Board {
	private Long bno;
	private String title; 
	private String content;
	private String writer; 
	private LocalDate regDate;
	private LocalDate updateDate;
}
