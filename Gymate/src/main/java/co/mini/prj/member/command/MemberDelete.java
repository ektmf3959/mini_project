package co.mini.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.common.Command;
import co.mini.prj.member.service.MemberService;
import co.mini.prj.member.service.MemberVO;
import co.mini.prj.member.service.Impl.MemberServiceImpl;

public class MemberDelete implements Command {

    @Override
    public String exec(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        MemberService dao = new MemberServiceImpl();
        MemberVO vo = new MemberVO();
        String viewPage = "main.do";
        vo.setMemberNum(Integer.valueOf(request.getParameter("id")));
        System.out.println(vo.getMemberNum());
        int n = dao.memberDelete(vo);
        if (n != 0) {
            session.invalidate();
            request.setAttribute("message", "탈퇴 되었습니다.");
        } else {
            request.setAttribute("message", "탈퇴실패");
        }
        return viewPage;
    }

}
