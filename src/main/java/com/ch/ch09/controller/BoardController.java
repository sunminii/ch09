package com.ch.ch09.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.ch09.model.Board;
import com.ch.ch09.service.BoardService;

@Controller  //jsp와 연동
public class BoardController {
	
	@Autowired
	private BoardService bs;
	
	@RequestMapping("list")
	public String list(Model model) {
		
		List<Board> list = bs.list();
		model.addAttribute("list",list);
		return "list";
	}
	
	@RequestMapping("insertForm")
	public String insertForm(Model model) {
		
		int ref=0, re_level=0, re_step=0, num=0; //0이면 답변글이 아니라는 의미
		
		model.addAttribute("ref",ref);
		model.addAttribute("re_level",re_level);
		model.addAttribute("re_step",re_step);
		model.addAttribute("num",num);
		
		return "insertForm";
	}
	
	@RequestMapping("insert")
	public String insert(Board board, Model model, HttpServletRequest request) {
		
		board.setIp(request.getLocalAddr());  // ip setting
		
		int result = bs.insert(board);
		model.addAttribute("result",result);
		
		return "insert";
	}
	
	@RequestMapping("view")
	public String view(int num, Model model) {
		
		bs.updateReadCount(num);
		Board board = bs.select(num);
		model.addAttribute("board",board);
		
		return "view";
	}
	
	@RequestMapping("updateForm")
	public String updateForm(int num, Model model) {
		
		Board board = bs.select(num);
		model.addAttribute("board",board);
		
		return "updateForm";
	}
}


















