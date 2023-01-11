package co.mini.prj.pay.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.common.Command;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.service.PointService;
import co.mini.prj.serviceImpl.PayServiceImpl;
import co.mini.prj.serviceImpl.PointServiceImpl;

public class PayUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	    HttpSession session = request.getSession();
        int num = (int) session.getAttribute("memberNum");

	    PayService dao = new PayServiceImpl();
		PayVO vo = new PayVO();
		vo.setMemberNum(num);
		vo.setPayNum(Integer.valueOf(request.getParameter("id1")));
		vo.setPayPlan(Integer.valueOf(request.getParameter("pl1")));
		vo.setPrice(Integer.valueOf(request.getParameter("pr1")));
		System.out.println(vo.getPayNum() + " " + vo.getPayPlan() + " " + vo.getPrice());
		String viewPage = "pay/payError";
		int result = dao.payUpdate(vo);
		
		if(result != 0) {
			request.setAttribute("vo", vo);
			viewPage = "paySelectListC.do";
		} else {
			request.setAttribute("message", "실패");
		}
		
		PointService dao1 = new PointServiceImpl();
		int result1 = dao1.pointUpdate(vo);
		int result2 = dao1.pointSumUpdate(vo);
		return viewPage;
	}

}
