package co.mini.prj.product.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mini.prj.common.DataSource;
import co.mini.prj.mapper.ProductMapper;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.product.service.ProductService;



public class ProductServiceImpl implements ProductService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ProductMapper map = sqlSession.getMapper(ProductMapper.class);
	
	@Override
	public List<ProductVO> productSelectList() {
		return map.productSelectList();
	}

	@Override
	public ProductVO productSelect(ProductVO vo) {
		return map.productSelect(vo);
	}

	@Override
	public int productInsert(ProductVO vo) {
		return map.productInsert(vo);
	}

	@Override
	public int productUpdate(ProductVO vo) {
		return map.productUpdate(vo);
	}

	@Override
	public int productDelete(ProductVO vo) {
		return map.productDelete(vo);
	}

	@Override
	public void productHitUpdate(int num) {
		// productHitUpdate(vo.getproductNum());
		map.productHitUpdate(num);
	}

	@Override
	public int ptInsert(ProductVO vo) {
		// 상품-pt 추가
		return map.ptInsert(vo);
	}

	@Override
	public List<ProductVO> inquireList() {
		// 문의 리스트 조회
		return map.inquireList();
	}

	@Override
	public ProductVO inquireSelect(ProductVO vo) {
		// 문의 1건 자세히 조회
		return map.inquireSelect(vo);
	}

	@Override
	public int inquireUpdate(ProductVO vo) {
		// 문의 1건 승인
		return map.inquireUpdate(vo);
	}

	@Override
	public int productCount() {
		// TODO Auto-generated method stub
		return map.productCount();
	}

}
