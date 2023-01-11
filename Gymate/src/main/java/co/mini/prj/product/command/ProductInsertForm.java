package co.mini.prj.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;

public class ProductInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 추가 폼 이동
		
		ProductService dao = new ProductServiceImpl();
		//ProductVO vo = new ProductVO();
		int num = dao.productCount();
		if(num != 0) {
			request.setAttribute("num", num);
		}
		return "product/productInsertForm";
	}

}
