package co.mini.prj.point.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.common.Command;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.service.PointService;
import co.mini.prj.service.PointVO;
import co.mini.prj.serviceImpl.PayServiceImpl;
import co.mini.prj.serviceImpl.PointServiceImpl;

public class PointSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	    HttpSession session = request.getSession();
        int num = (int) session.getAttribute("memberNum");

	    PointService dao = new PointServiceImpl();
		List<PointVO> list = new ArrayList<PointVO>();
		PointVO vo = new PointVO();
		vo.setMemberNum(num);
		list = dao.pointSelectList(vo);
		request.setAttribute("list", list);
		
		PayService dao1 = new PayServiceImpl();
		PayVO vo1 = new PayVO();
		List<PayVO> list1 = new ArrayList<PayVO>();
		vo1.setMemberNum(num);
		list1 = dao1.paySelectListC(vo1);
		request.setAttribute("list1", list1);
		
		PointService dao2 = new PointServiceImpl();
		PointVO vo2 = new PointVO();
		vo2 = dao2.pointSum(vo);
		request.setAttribute("vo2", vo2);
		
		return "point/pointSelectList";
	}

}
