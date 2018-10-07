package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Board;

public interface BoardMapper {
	List<Board> selectBoardList();
	Board insertBoard(Board board);
}
