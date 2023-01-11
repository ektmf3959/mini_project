package co.mini.prj.pay.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.service.PointService;
import co.mini.prj.service.PointVO;
import co.mini.prj.serviceImpl.PayServiceImpl;
import co.mini.prj.serviceImpl.PointServiceImpl;

public class PayInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		PayService dao = new PayServiceImpl();
		PayVO vo = new PayVO();
		int num = (int) session.getAttribute("memberNum");
		String viewPage = "pay/payError";
		
		vo.setPayPlan(Integer.valueOf(request.getParameter("payPlan")));
		vo.setPrice(Integer.valueOf(request.getParameter("price")));
		vo.setMemberNum(num);
		vo.setProductNum(Integer.valueOf(request.getParameter("productNum")));
		
		int result = dao.payInsert(vo);
		int result0 = dao.payInsert1(vo);
		if (result != 0 && result0 != 0) {
			viewPage = "paySelectListC.do";
		} else {
			request.setAttribute("message", "결제 실패");
		}
		
		PointService dao1 = new PointServiceImpl();
		PointVO vo1 = new PointVO();
		vo1.setMemberNum(num);
		int result1 = dao1.pointInsert(vo1);
		
		if (result1 != 0) {
			viewPage = "paySelectListC.do";
		} else {
			request.setAttribute("message", "결제 실패");
		}
		
		ProductService dao3 = new ProductServiceImpl();
		ProductVO vo3 = new ProductVO();
		vo3.setProductNum(Integer.valueOf(request.getParameter("productNum")));
		vo3 = dao3.productSelect(vo3);
		
		ProductService dao2 = new ProductServiceImpl();
		ProductVO vo2 = new ProductVO();
		vo2.setProductNum(Integer.valueOf(request.getParameter("productNum")));
		vo2.setCount(vo3.getCount() - (Integer.valueOf(request.getParameter("count"))));
		System.out.println(vo2.getCount());
		System.out.println(vo3.getCount());
		int result2 = dao2.productUpdate(vo2);
		
		if (result2 != 0) {
		    viewPage = "paySelectListC.do";
		} else {
            request.setAttribute("message", "결제 실패");
        }
		
		return viewPage;
	}

}
