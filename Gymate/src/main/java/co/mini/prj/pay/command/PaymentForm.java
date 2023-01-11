package co.mini.prj.pay.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.pay.command.PaymentForm;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;

public class PaymentForm implements Command {

    @Override
    public String exec(HttpServletRequest request, HttpServletResponse response) {
        // 결제창
        ProductService dao = new ProductServiceImpl();
        ProductVO vo = new ProductVO();
        vo.setProductNum(Integer.valueOf(request.getParameter("num")));
        int count = (Integer.valueOf(request.getParameter("count1")));
        vo=dao.productSelect(vo); //검색결과 얻기
        if (vo != null) {
            dao.productHitUpdate(vo.getProductNum()); // 조회수 증가
            request.setAttribute("product", vo); // 페이지에 전달하기 위해
            request.setAttribute("count", count);
        }
        System.out.println(vo.getPrice());
        
        return "pay/paymentForm";
    }

}
