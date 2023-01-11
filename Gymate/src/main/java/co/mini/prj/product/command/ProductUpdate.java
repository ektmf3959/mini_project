package co.mini.prj.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;

public class ProductUpdate implements Command {
	private String saveFolder = "C:\\Dev\\workspace\\Gymate\\src\\main\\webapp\\fileUpload"; // 실제 파일이 저장할 공간
	private String charactSet = "utf-8"; // 전송되는 파일 한글 깨짐 방지
	private int maxSize = 1024*1024*1024; // 파일 최대 사이즈
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 상품 수정
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		String viewPage="main/productMessage";; //돌려줄페이지
		String fileName = "";
		String originalFileName = "";
		
		try {
			MultipartRequest multi =
					new MultipartRequest(request, saveFolder, maxSize,charactSet, new DefaultFileRenamePolicy());
			fileName = multi.getFilesystemName("productFile"); // 물리적 위치에 파일 저장
			originalFileName = multi.getOriginalFileName("productFile"); // 실제 파일명
			
			vo.setProductNum(Integer.valueOf(multi.getParameter("productNum")));
			vo.setPrice(Integer.valueOf(multi.getParameter("price")));
			vo.setCount(Integer.valueOf(multi.getParameter("count")));
			vo.setProductName(multi.getParameter("productName"));
			vo.setExplain(multi.getParameter("explain"));
			vo.setProductAttach(originalFileName);
			vo.setProductAttachDir(fileName);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		// 첨부파일이 있을시 이곳에서 처리함
		int n = dao.productUpdate(vo);
		
		if(n != 0) {
		//	request.setAttribute("message", "정상적으로 입력이 되었습니다.");
			viewPage="productSelectList.do";
		} else {
			request.setAttribute("message", "상품 수정이 실패했습니다.");
		}
		return viewPage;
	}

}
