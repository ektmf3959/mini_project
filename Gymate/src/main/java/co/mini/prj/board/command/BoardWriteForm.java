package co.mini.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;

public class BoardWriteForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "board/boardWriteForm";
	}

}