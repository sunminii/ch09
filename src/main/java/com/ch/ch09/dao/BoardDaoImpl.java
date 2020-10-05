package com.ch.ch09.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.ch09.model.Board;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Board> list() {
		return sst.selectList("boardns.list");
	}

	@Override
	public int insert(Board board) {
		return sst.insert("boardns.insert", board);
	}

	@Override
	public void updateReadCount(int num) {
		sst.update("boardns.updateReadCount",num);
		
	}

	@Override
	public Board select(int num) {
		return sst.selectOne("boardns.select",num);
	}
}
