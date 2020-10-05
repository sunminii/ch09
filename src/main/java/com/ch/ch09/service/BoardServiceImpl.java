package com.ch.ch09.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.ch09.dao.BoardDao;
import com.ch.ch09.model.Board;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDao bd;

	@Override
	public List<Board> list() {
		return bd.list();
	}

	@Override
	public int insert(Board board) {
		return bd.insert(board);
	}

	@Override
	public void updateReadCount(int num) {
		bd.updateReadCount(num);
	}

	@Override
	public Board select(int num) {
		return bd.select(num);
	}
	
}
