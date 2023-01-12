package co.mini.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.common.Command;

public class MemberLogout implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("memberNickName"); 
		session.invalidate(); 
		request.setAttribute("message", name + "�� ȯ���մϴ�." );
		
		return "main.do";
	}

}
