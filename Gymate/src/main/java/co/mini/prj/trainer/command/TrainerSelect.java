package co.mini.prj.trainer.command;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.member.service.MemberService;
import co.mini.prj.member.service.MemberVOCT;
import co.mini.prj.member.service.Impl.MemberServiceImpl;

public class TrainerSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// PT 상세 조회
		
		MemberService dao = new MemberServiceImpl();
		List<Map<String, Object>> list = new ArrayList<>();
		int num = Integer.valueOf(request.getParameter("num"));
		list = dao.trainerSelect(num);
		
		request.setAttribute("list", list);
		return "trainer/trainerSelect";
	}

}
