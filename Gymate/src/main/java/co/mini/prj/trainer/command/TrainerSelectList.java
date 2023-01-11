package co.mini.prj.trainer.command;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.member.service.MemberService;
import co.mini.prj.member.service.Impl.MemberServiceImpl;

public class TrainerSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 메뉴 - PT 판매 페이지
		MemberService dao = new MemberServiceImpl();
		List<Map<String, Object>> list = new ArrayList<>();
		list = dao.trainerSelectList();
		request.setAttribute("list", list);
		return "trainer/trainerSelectList";
	}

}
