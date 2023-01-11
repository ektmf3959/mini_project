package co.mini.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.service.BoardVO;
import co.mini.prj.board.serviceimpl.BoardServiceImpl;
import co.mini.prj.coment.service.ComentService;
import co.mini.prj.coment.serviceimpl.ComentServiceImpl;
import co.mini.prj.common.Command;

public class BoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		BoardService dao = new BoardServiceImpl();
		ComentService cdao = new ComentServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardNum(Integer.valueOf(request.getParameter("boardNum")));

		String viewPage = "board/boardError";
		int result = dao.boardDelete(vo);

		if (result != 0) {
			cdao.ComentDeleteAll(vo.getBoardNum());
			dao.boardGoodDeleteAll(vo.getBoardNum());
			viewPage = "boardSelectList.do";
		} else {
			request.setAttribute("message", "���� ����!!");
		}

		return viewPage;
	}

}
