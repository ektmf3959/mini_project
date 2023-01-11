package co.mini.prj.mapper;

import java.util.List;

import co.mini.prj.product.service.ProductVO;
import co.mini.prj.service.PayVO;

public interface PayMapper {
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
