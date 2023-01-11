package co.mini.prj.service;

import java.util.List;

import co.mini.prj.product.service.ProductVO;

public interface PayService {
	List<PayVO> paySelectListT(PayVO vo);
	List<PayVO> paySelectListC(PayVO vo);
	PayVO paySelect(PayVO vo);
	PayVO paySelectT(PayVO vo);
	int payInsert(PayVO vo);
	int payInsert1(PayVO vo);
	int payUpdate(PayVO vo);
	int payDelete(PayVO vo);
	
	List<ProductVO> paySelectListProduct(PayVO vo);
}
