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
		// ??????
		map.put("/main.do", new MainCommand());
		map.put("/trainerSelect.do", new TrainerSelect());
		map.put("/myInfo.do", new MyInfo()); // MyPage -> ????????????
		map.put("/memberLoginForm.do", new MemberLoginForm()); // ????????????
		map.put("/memberLogout.do", new MemberLogout()); // ????????????
		map.put("/memberUpdateForm.do", new MemberUpdateForm()); // ???????????? ??????
		map.put("/memberUpdate.do", new MemberUpdate()); // ???????????? ??????
		map.put("/memberDeleteMessage.do", new MemberDeleteMessage());
		map.put("/memberDelete.do", new MemberDelete());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberInsertForm.do", new MemberInsertForm());
		map.put("/ajaxMemberIdCheck.do", new AjaxMemberIdCheck());

		// ??????
		map.put("/productSelectList.do", new ProductSelectList());
		map.put("/productSelect.do", new ProductSelect());
		map.put("/productInsert.do", new ProductInsert());
		map.put("/productUpdate.do", new ProductUpdate());
		map.put("/productDelete.do", new ProductDelete());
		map.put("/insertMarkForm.do", new InsertMarkForm()); // ?????? ?????????
		map.put("/insertMark.do", new InsertMark()); // ????????????
		map.put("/trainerSelectList.do", new TrainerSelectList()); // pt?????????
		map.put("/trainerSelect.do", new TrainerSelect()); // pt 1??? ????????????
		map.put("/productInsertForm.do", new ProductInsertForm()); // ?????? ?????? ???
		map.put("/productInsert.do", new ProductInsert()); // ?????? 1??? ??????
		map.put("/productUpdateForm.do", new ProductUpdateForm()); // ?????? ?????? ???
		map.put("/paymentForm.do", new PaymentForm()); // ????????? ??????

		// ?????????
		map.put("/boardSelectList.do", new BoardSelectList());
		map.put("/boardInsert.do", new BoardInsert());
		map.put("/boardSelect.do", new BoardSelect());
		map.put("/boardEdit.do", new BoardEdit());
		map.put("/boardDelete.do", new BoardDelete());
		map.put("/boardGoodInsert.do", new BoardGoodInsert());
		map.put("/boardGoodDelete.do", new BoardGoodDelete());
		map.put("/boardWriteForm.do", new BoardWriteForm());
		map.put("/information.do", new Information());

		// ??????
		map.put("/comentWriteForm.do", new ComentWriteForm());
		map.put("/comentInsert.do", new ComentInsert());
		map.put("/comentEdit.do", new ComentEdit());
		map.put("/comentDelete.do", new ComentDelete());

		// ?????????
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
		map.put("/trainer.do", new Trainer()); // ??????-?????????????????????
		// menu-????????????
		map.put("/inquire.do", new Inquire()); // ?????? ?????? ?????????
		map.put("/ptInsert.do", new PtInsert()); // pt?????? ??????
		map.put("/inquireList.do", new InquireList()); // pt ?????? list
		map.put("/inquireSelect.do", new InquireSelect()); // pt ?????? ??????1???
		map.put("/inquireUpdate.do", new InquireUpdate()); // pt ????????? ??????

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ???????????? ?????????????????? ???????????????
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		Command command = map.get(page);
		String viewPage = command.exec(request, response);

		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("ajax:")) { // Ajax
				// response ??????????????? ???????????? ??????????????? ?????????????????? ??????????????????
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
					// ?????????????????? ?????????????????? ????????????????????? ??????
					RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
					dispatcher.forward(request, response);
				}
			}
		} else {
			// ????????? ????????????
			response.sendRedirect(viewPage); // .do return??????
		}
	}

}
