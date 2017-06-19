package com.action;

import java.util.ArrayList;
import java.util.List;

import com.bean.Message;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport {

	private static final long serialVersionUID = -231865594724893608L;
	
	private List<Message> mess;	
	
	public List<Message> getMess() {
		return mess;
	}
	
	public String execute(){
		mess = new ArrayList<Message>();
		
		Message m1 = new Message();
		m1.setName("男");
		m1.setData(new int[]{23, 32, 54, 53, 12, 34, 56, 32, 22});
		
		Message m2 = new Message();
		m2.setName("女");
		m2.setData(new int[]{32, 43, 12, 43, 34, 14, 54, 22, 45});
		
		mess.add(m1);
		mess.add(m2);
		 
		return SUCCESS;
	}
}
