package co.mini.prj.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;

public class InquireUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 승인
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		String viewPage="main/productMessage";; //돌려줄페이지
		
		vo.setPtState(request.getParameter("ptState"));
		int n = dao.inquireUpdate(vo);
		
		if(n != 0) {
			request.setAttribute("message", "승인 완료");
		} else {
			request.setAttribute("message", "승인 실패");
		}
		return viewPage;
	}

}
