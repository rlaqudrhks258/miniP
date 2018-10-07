package kr.co.mlec.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.mapper.BoardMapper;

@WebServlet("/board/ListBoard.do")
public class ListBoardController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		List<Board> board = mapper.selectBoardList();
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher(
				"/jsp/board/ListBoard.jsp"
				);
		rd.forward(request, response);
				
	}

}
