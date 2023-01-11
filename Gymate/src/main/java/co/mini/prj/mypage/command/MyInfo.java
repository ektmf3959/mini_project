package co.mini.prj.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;

public class MyInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
//		System.out.println("myinfo");
//		// MyPage -> 개인정보
////      HttpSession session = request.getSession(false);
//		HttpSession session = request.getSession();
//		MemberService dao = new MemberServiceImpl();
//		MemberVO vo = new MemberVO();
//		System.out.println("myinfo2222");
//		vo.setMemberId(request.getParameter("memberId"));
//		vo.setMemberNo(Integer.valueOf(request.getParameter("memberNo")));
//		vo.setMemberPw(request.getParameter("memberPw"));
//		vo.setMemberName(request.getParameter("memberName"));
//		vo.setMemberNickName(request.getParameter("memberNickName"));
//		vo.setMemberAge(Date.valueOf(request.getParameter("memberAge")));
//		vo.setMemberTel(request.getParameter("memberTel"));
//		vo.setMemberAuthor(request.getParameter("memberAuthor"));
//		vo = dao.myInfo(vo); // 이게 작동안함 왜징?
////      System.out.println("myinfo33333333333");
//		session.setAttribute("m", vo);
//
////      if (session == null) {
////         System.out.println("세션은 null");
////      }
//
////      String viewPage = "main/message";
//
////      if (session.getAttribute("memberNo") != null) {
////          viewPage = "mypage/myInfo";
////         } else {
////         viewPage = "member/memberLoginForm";
////         }
////         return viewPage;
////   }   
		return "mypage/myInfo";
//      return "page/menu";
	}
}

/*
 * if (session.getAttribute("memberNo") != null) {
 * 
 * if ( session.getAttribute("memberAuthor") == "CUSTOMER") {
 * session.setAttribute("memberAuthor", "CUSTOMER"); System.out.println("손님");
 * viewPage = "mypage/myInfo"; } else if (vo.getMemberAuthor() == "TRAINER") {
 * session.setAttribute("memberAuthor", "TRAINER"); System.out.println("트레이너");
 * viewPage = "mypage/myInfo"; } else if (vo.getMemberAuthor() == "ADMIN") {
 * session.setAttribute("memberAuthor", "ADMIN"); System.out.println("관리자");
 * viewPage = "mypage/myInfo"; } else { request.setAttribute("message",
 * "속았지??"); // return "main/main" // <c:if test="${author eq CUSTOMER }"> //
 * <!-- ADMIN --> // </c:if> } } else { // 濡쒓렇 씤 viewPage =
 * "member/memberLoginForm"; } return viewPage;
 */