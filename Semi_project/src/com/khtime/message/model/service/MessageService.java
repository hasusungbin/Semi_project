package com.khtime.message.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.khtime.common.JDBCTemplate.*;

import com.khtime.member.model.vo.Member;
import com.khtime.message.model.dao.MessageDao;

public class MessageService {
	
//	public int sendMessage(int sender,int receiver,String content) {
//		Connection conn = getConnection();
//
//		int result = new MessageDao().sendMessage(conn, content, sender,receiver);
//
//		if(result > 0 ) {
//			commit(conn);
//		}else {
//			rollback(conn);
//		} close(conn);
//
//		return result;
//	}
	
	public ArrayList<Member> selectMessage(int userNo) {
		Connection conn =getConnection();
		
		ArrayList<Member> result = new MessageDao().selectMessage(conn, userNo);
		
		close(conn);
		
		return result;
	}
}
