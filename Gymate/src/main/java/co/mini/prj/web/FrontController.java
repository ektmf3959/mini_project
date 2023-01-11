package co.mini.prj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.Information;
import co.mini.prj.MainCommand;
import co.mini.prj.board.command.BoardDelete;
import co.mini.prj.board.command.BoardEdit;
import co.mini.prj.board.command.BoardGoodDelete;
import co.mini.prj.board.command.BoardGoodInsert;
import co.mini.prj.board.command.BoardInsert;
import co.mini.prj.board.command.BoardSelect;
import co.mini.prj.board.command.BoardSelectList;
import co.mini.prj.board.command.BoardWriteForm;
import co.mini.prj.coment.command.ComentDelete;
import co.mini.prj.coment.command.ComentEdit;
import co.mini.prj.coment.command.ComentInsert;
import co.mini.prj.coment.command.ComentWriteForm;
import co.mini.prj.common.Command;
import co.mini.prj.mark.command.InsertMark;
import co.mini.prj.mark.command.InsertMarkForm;
import co.mini.prj.member.command.AjaxMemberIdCheck;
import co.mini.prj.member.command.MemberDelete;
import co.mini.prj.member.command.MemberDeleteMessage;
import co.mini.prj.member.command.MemberInsert;
import co.mini.prj.member.command.MemberInsertForm;
import co.mini.prj.member.command.MemberLogin;
import co.mini.prj.member.command.MemberLoginForm;
import co.mini.prj.member.command.MemberLogout;
import co.mini.prj.member.command.MemberUpdate;
import co.mini.prj.member.command.MemberUpdateForm;
import co.mini.prj.mypage.command.MyInfo;
import co.mini.prj.pay.command.PayDelete;
import co.mini.prj.pay.command.PayInsert;
import co.mini.prj.pay.command.PaySelect;
import co.mini.prj.pay.command.PaySelectListC;
import co.mini.prj.pay.command.PaySelectListT;
import co.mini.prj.pay.command.PaySelectProduct;
import co.mini.prj.pay.command.PaySelectT;
import co.mini.prj.pay.command.PayUpdate;
import co.mini.prj.pay.command.PaymentForm;
import co.mini.prj.point.command.PointInsert;
import co.mini.prj.point.command.PointSelect;
import co.mini.prj.point.command.PointSelectList;
import co.mini.prj.product.command.Inquire;
import co.mini.prj.product.command.InquireList;
import co.mini.prj.product.command.InquireSelect;
import co.mini.prj.product.command.InquireUpdate;
import co.mini.prj.product.command.ProductDelete;
import co.mini.prj.product.command.ProductInsert;
import co.mini.prj.product.command.ProductInsertForm;
import co.mini.prj.product.command.ProductSelect;
import co.mini.prj.product.command.ProductSelectList;
import co.mini.prj.product.command.ProductUpdate;
import co.mini.prj.product.command.ProductUpdateForm;
import co.mini.prj.product.command.PtInsert;
import co.mini.prj.trainer.command.Trainer;
import co.mini.prj.trainer.command.TrainerInsert;
import co.mini.prj.trainer.command.TrainerSelect;
import co.mini.prj.trainer.command.TrainerSelectList;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<>();

	public FrontController() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {
		// 회원
		map.put("/main.do", new MainCommand());
		map.put("/trainerSelect.do", new TrainerSelect());
		map.put("/myInfo.do", new MyInfo()); // MyPage -> 개인정보
		map.put("/memberLoginForm.do", new MemberLoginForm()); // 로그인폼
		map.put("/memberLogout.do", new MemberLogout()); // 로그아웃
		map.put("/memberUpdateForm.do", new MemberUpdateForm()); // 회원정보 수정
		map.put("/memberUpdate.do", new MemberUpdate()); // 회원정보 수정
		map.put("/memberDeleteMessage.do", new MemberDeleteMessage());
		map.put("/memberDelete.do", new MemberDelete());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberInsertForm.do", new MemberInsertForm());
		map.put("/ajaxMemberIdCheck.do", new AjaxMemberIdCheck());

		// 제품
		map.put("/productSelectList.do", new ProductSelectList());
		map.put("/productSelect.do", new ProductSelect());
		map.put("/productInsert.do", new ProductInsert());
		map.put("/productUpdate.do", new ProductUpdate());
		map.put("/productDelete.do", new ProductDelete());
		map.put("/insertMarkForm.do", new InsertMarkForm()); // 평가 입력폼
		map.put("/insertMark.do", new InsertMark()); // 평가입력
		map.put("/trainerSelectList.do", new TrainerSelectList()); // pt리스트
		map.put("/trainerSelect.do", new TrainerSelect()); // pt 1건 상세조회
		map.put("/productInsertForm.do", new ProductInsertForm()); // 상품 추가 폼
		map.put("/productInsert.do", new ProductInsert()); // 상품 1건 추가
		map.put("/productUpdateForm.do", new ProductUpdateForm()); // 상품 수정 폼
		map.put("/paymentForm.do", new PaymentForm()); // 결제폼 추가

		// 게시판
		map.put("/boardSelectList.do", new BoardSelectList());
		map.put("/boardInsert.do", new BoardInsert());
		map.put("/boardSelect.do", new BoardSelect());
		map.put("/boardEdit.do", new BoardEdit());
		map.put("/boardDelete.do", new BoardDelete());
		map.put("/boardGoodInsert.do", new BoardGoodInsert());
		map.put("/boardGoodDelete.do", new BoardGoodDelete());
		map.put("/boardWriteForm.do", new BoardWriteForm());
		map.put("/information.do", new Information());

		// 댓글
		map.put("/comentWriteForm.do", new ComentWriteForm());
		map.put("/comentInsert.do", new ComentInsert());
		map.put("/comentEdit.do", new ComentEdit());
		map.put("/comentDelete.do", new ComentDelete());

		// 최승현
		map.put("/paySelectListT.do", new PaySelectListT());
		map.put("/paySelectListC.do", new PaySelectListC());
		map.put("/paySelect.do", new PaySelect());
		map.put("/paySelectT.do", new PaySelectT());
		map.put("/payInsert.do", new PayInsert());
		map.put("/payUpdate.do", new PayUpdate());
		map.put("/payDelete.do", new PayDelete());
		map.put("/paySelectProduct.do", new PaySelectProduct());

		map.put("/pointSelectList.do", new PointSelectList());
		map.put("/pointInsert.do", new PointInsert());
		map.put("/pointSelect.do", new PointSelect());

		map.put("/trainerInsert.do", new TrainerInsert());
		// menu-pt
		map.put("/trainer.do", new Trainer()); // 상품-트레이너페이지
		// menu-제작문의
		map.put("/inquire.do", new Inquire()); // 제작 문의 페이지
		map.put("/ptInsert.do", new PtInsert()); // pt제작 주문
		map.put("/inquireList.do", new InquireList()); // pt 주문 list
		map.put("/inquireSelect.do", new InquireSelect()); // pt 주문 상세1건
		map.put("/inquireUpdate.do", new InquireUpdate()); // pt 문의건 승인

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// �떎�젣 �닔�뻾�븷 �꽌鍮꾩뒪
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		Command command = map.get(page);
		String viewPage = command.exec(request, response);

		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("ajax:")) { // Ajax
				// response 媛앹껜媛� 媛�吏� 而⑦뀗痢� ���엯�쓣 諛붽퓭以섎씪
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			} else {
//				viewPage = "/WEB-INF/views/" + viewPage + ".jsp";
//				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
//				dispatcher.forward(request, response);
				if (viewPage.startsWith("no:")) { // tiles X
					viewPage = "/WEB-INF/views/" + viewPage.substring(3) + ".jsp";
				} else {
					viewPage = viewPage + ".tiles"; // tiles O
					// �뼱�뵒濡� 媛��씪怨� �룎�젮二쇰뒗 嫄�
					RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
					dispatcher.forward(request, response);
				}
			}
		} else {
			// 沅뚰븳 �쐞�엫
			response.sendRedirect(viewPage); // .do return�떆
		}
	}

}
