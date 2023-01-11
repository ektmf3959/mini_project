package co.mini.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.common.Command;

public class MemberLogout implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("memberNickName"); // 세션에 담김 이름 가져오기.
		session.invalidate(); //세션을 완전히 삭제한다.
		request.setAttribute("message", name + "님 정상적으로 로그아웃 되었다." );
		
		return "main.do";
	}

}
