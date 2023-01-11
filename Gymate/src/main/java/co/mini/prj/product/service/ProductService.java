package co.mini.prj.product.service;

import java.util.List;


public interface ProductService {
	List<ProductVO> productSelectList();    //전체목록 가져오기
	ProductVO productSelect(ProductVO vo);   //한 상품의 데이터 가져오기
	int productInsert(ProductVO vo);  // 상품 데이터 추가
	int productUpdate(ProductVO vo);  // 데이터 갱신
	int productDelete(ProductVO vo);  //데이터 삭제	
	
	int productCount(); // product 번호
	
	void productHitUpdate(int id); // 조회수 
	int ptInsert(ProductVO vo);    // 상품 -pt 추가
	
	List<ProductVO> inquireList(); //문의 전체목록 가져오기
	ProductVO inquireSelect(ProductVO vo); //문의 1건 데이터 가져오기
	int inquireUpdate(ProductVO vo); // 문의 승인

}
