package co.mini.prj.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mini.prj.common.DataSource;
import co.mini.prj.mapper.PayMapper;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;

public class PayServiceImpl implements PayService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private PayMapper map = sqlSession.getMapper(PayMapper.class);

	@Override
	public PayVO paySelect(PayVO vo) {
		return map.paySelect(vo);
	}

	@Override
	public int payInsert(PayVO vo) {
		// TODO Auto-generated method stub
		return map.payInsert(vo);
	}

	@Override
	public int payUpdate(PayVO vo) {
		// TODO Auto-generated method stub
		return map.payUpdate(vo);
	}

	@Override
	public int payDelete(PayVO vo) {
		// TODO Auto-generated method stub
		return map.payDelete(vo);
	}

	@Override
	public List<PayVO> paySelectListT(PayVO vo) {
		
		return map.paySelectListT(vo);
	}

	@Override
	public List<PayVO> paySelectListC(PayVO vo) {
		
		return map.paySelectListC(vo);
	}

	@Override
	public List<ProductVO> paySelectListProduct(PayVO vo) {
		
		return map.paySelectListProduct(vo);
	}

	@Override
	public PayVO paySelectT(PayVO vo) {
		// TODO Auto-generated method stub
		return map.paySelectT(vo);
	}

	@Override
	public int payInsert1(PayVO vo) {
		// TODO Auto-generated method stub
		return map.payInsert1(vo);
	}

}
