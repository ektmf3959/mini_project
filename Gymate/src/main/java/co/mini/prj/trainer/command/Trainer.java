package co.mini.prj.trainer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;

public class Trainer implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 메뉴-트레이너 페이지
		return "page/trainer";
	}

}
