package kr.co.mlec.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.mapper.BoardMapper;

@WebServlet("/board/deleteBoard.do")
public class deleteBoardController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
	int no = Integer.parseInt(request.getParameter("no"));
	mapper.deleteBoard(no);
	RequestDispatcher rd = request.getRequestDispatcher(
			"/MiniP/board/ListBoard.do"
			);
	rd.forward(request, response);
		
	}
	
	

}
