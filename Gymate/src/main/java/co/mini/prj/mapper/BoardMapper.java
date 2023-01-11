package co.mini.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.mini.prj.board.service.BoardVO;

public interface BoardMapper {
	List<BoardVO> boardSelectList(@Param("str") String str, @Param("searchMenu") String searchMenu,
			@Param("searchVal") String searchVal);
//	List<BoardVO> boardSelectList(@Param("lownum") int lownum, @Param("highnum") int highnum,
//			@Param("searchMenu") String searchMenu, @Param("searchVal") String searchVal);
//
//	int boardCount();

	List<BoardVO> boardNoticeSelect();

	BoardVO boardSelect(BoardVO vo);

	int boardInsert(BoardVO vo);

	int boardUpdate(BoardVO vo);

	int boardDelete(BoardVO vo);

	void boardHitUpdate(int num);

	int boardGoodExist(@Param("boardNum") int boardNum, @Param("memberNum") int memberNum);

	int boardGoodInsert(@Param("boardNum") int boardNum, @Param("memberNum") int memberNum);

	int boardGoodDelete(@Param("boardNum") int boardNum, @Param("memberNum") int memberNum);

	void boardGoodDeleteAll(int num);

	List<BoardVO> boardSearchList(@Param("key") String key, @Param("val") String val);

}
