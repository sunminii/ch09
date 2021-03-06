package com.ch.ch09.service;

import java.util.List;

import com.ch.ch09.model.Board;

public interface BoardService {

	List<Board> list();

	int insert(Board board);

	void updateReadCount(int num);

	Board select(int num);

}
