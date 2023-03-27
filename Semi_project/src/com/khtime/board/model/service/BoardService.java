package com.khtime.board.model.service;
import static com.khtime.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import com.khtime.common.model.vo.PageInfo;
import com.khtime.board.model.dao.BoardDao;
import com.khtime.board.model.vo.Board;


public class BoardService {
	
	public ArrayList<Board> selectBoard(int cNo, PageInfo pi) {
		Connection conn = JDBCTemplate.getConnection();

		ArrayList<Board> boardList = new BoardDao().selectBoard(conn, cNo, pi);

		JDBCTemplate.close(conn);

		return boardList;
	}

	public int boardListCount(int cNo) {
		Connection conn = JDBCTemplate.getConnection();

		int result = new BoardDao().boardListCount(conn, cNo);

		JDBCTemplate.close(conn);

		return result;
	}
	
	public Board selectContent(int bNo) {
		Connection conn = JDBCTemplate.getConnection();

		Board b = new BoardDao().selectContent(conn, bNo);

		JDBCTemplate.close(conn);

		return b;
	}

	public int insertBoard(Board b) {
		Connection conn = JDBCTemplate.getConnection();

		int result = new BoardDao().insertBoard(conn, b);

		if(result > 0 ) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}

		return result;
	}

	public ArrayList<Board> getHotBestBoardlist(int recommendCount) {
		Connection conn = getConnection();
		ArrayList<Board> list = new BoardDao().getHotBestBoardlist(conn, recommendCount);
		close(conn);
		return list;
	}

}
