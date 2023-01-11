package co.mini.prj.pay.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.serviceImpl.PayServiceImpl;

public class PaySelectListT implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	    HttpSession session = request.getSession();
        int num = (int) session.getAttribute("memberNum");

	    List<PayVO> list = new ArrayList<PayVO>();
		PayService dao = new PayServiceImpl();
		PayVO vo = new PayVO();
		vo.setMemberNum(num);
		System.out.println(vo.getMemberNum());
		list = dao.paySelectListT(vo);
		
		PayService dao1 = new PayServiceImpl();
		ProductVO vo1 = new ProductVO();
		List<ProductVO> list1 = new ArrayList<ProductVO>();
		list1 = dao.paySelectListProduct(vo);
		System.out.println(list1);
		request.setAttribute("list1", list1);
		
		request.setAttribute("list", list);
		return "pay/paySelectListT";
	}

}
