package com.ch.ch09.model;

import java.sql.Date;
import lombok.Data;

@Data
public class Board {
	
	private int num;
	private String writer; 
	private String subject;
	private String content;
	private String email;
	private int readcount;
	private String password;
	private int ref; //답변글끼리 그룹
	private int re_step; //ref내의 순서
	private int re_level; //들여쓰기
	private String ip; //작성자 ip
	private Date reg_date;
	private String del;

}


