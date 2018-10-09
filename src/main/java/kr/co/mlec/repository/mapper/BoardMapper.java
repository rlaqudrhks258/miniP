package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.Page;

public interface BoardMapper {
	List<Board> selectBoardList(Page page);
	void insertBoard(Board board);
	void deleteBoard(int no);
	
	/*전체게시물 수*/
	int selectBoardCount();
	
	
	

	
	
}
