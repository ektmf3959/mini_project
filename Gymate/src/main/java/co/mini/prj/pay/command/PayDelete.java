package co.mini.prj.pay.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.service.PointService;
import co.mini.prj.service.PointVO;
import co.mini.prj.serviceImpl.PayServiceImpl;
import co.mini.prj.serviceImpl.PointServiceImpl;

public class PayDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PointService dao1 = new PointServiceImpl();
		PointVO vo1 = new PointVO();
		vo1.setPayNum(Integer.valueOf(request.getParameter("id")));
		
		PayService dao = new PayServiceImpl();
		PayVO vo = new PayVO();
		vo.setPayNum(Integer.valueOf(request.getParameter("id")));
		
		String viewPage = "pay/payError";
		int result = dao.payDelete(vo);
		int result1 = dao1.pointDelete(vo1);
		if (result != 0 && result1 != 0) {
			viewPage = "paySelectListC.do";
		} else {
			request.setAttribute("message", "실패");
		}
		return viewPage;
	}

}
