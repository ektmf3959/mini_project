package co.mini.prj.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;

public class Inquire implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 제작문의 페이지
		ProductService dao = new ProductServiceImpl();
		int num = dao.productCount();
		if(num != 0) {
			request.setAttribute("num", num);
		}
		return "product/inquire";
	}

}
