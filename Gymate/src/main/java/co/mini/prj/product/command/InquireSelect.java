package co.mini.prj.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;

public class InquireSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductNum(Integer.valueOf(request.getParameter("productNum")));
		vo = dao.inquireSelect(vo);
		
		if(vo != null) {
			request.setAttribute("product", vo);
			System.out.println(vo);
		}
		return "product/inquireSelect";
	}

}
