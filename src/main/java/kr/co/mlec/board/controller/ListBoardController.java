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
import kr.co.mlec.repository.domain.Page;
import kr.co.mlec.repository.mapper.BoardMapper;

@WebServlet("/board/ListBoard.do")
public class ListBoardController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		int pageNo =1;
		//만약 사용자가 페이지 번호를 넘겨준 경우 설정 바꿔주기
		try {
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
		} catch(Exception e) {}
		Page page = new Page();
		page.setPageNo(pageNo);
		
		
		List<Board> board = mapper.selectBoardList(page);
		//전체 게시물의 갯수
		int count = mapper.selectBoardCount();
		// 마지막페이지
		int lastPage = (int)Math.ceil(count/10d);
		
		request.setAttribute("board", board);
		request.setAttribute("count", count);
		request.setAttribute("lastPage", lastPage);
		request.setAttribute("pageNo", pageNo);
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher(
				"/jsp/board/ListBoard.jsp"
				);
		rd.forward(request, response);
				
	}

}
