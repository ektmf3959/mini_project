package co.mini.prj.pay.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.serviceImpl.PayServiceImpl;

public class PaySelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PayService dao = new PayServiceImpl();
		PayVO vo = new PayVO();
		vo.setPayNum(Integer.valueOf(request.getParameter("id")));
		vo = dao.paySelect(vo);
		System.out.println(vo.getPayNum());
		request.setAttribute("vo", vo);
		
		ProductService dao1 = new ProductServiceImpl();
		ProductVO vo1 = new ProductVO();
		vo1.setProductNum(Integer.valueOf(request.getParameter("id1"))); //폼에서 넘어온 아이디 담고
		System.out.println(vo1.getProductNum());
		vo1 = dao1.productSelect(vo1); //검색결과 얻기
		request.setAttribute("vo1", vo1);
		
		return "pay/paySelect";
	}

}
