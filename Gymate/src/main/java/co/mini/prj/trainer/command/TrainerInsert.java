package co.mini.prj.trainer.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.mini.prj.common.Command;
import co.mini.prj.member.service.MemberService;
import co.mini.prj.member.service.MemberVOCT;
import co.mini.prj.member.service.Impl.MemberServiceImpl;

public class TrainerInsert implements Command {
	private String saveFolder = "C:\\Users\\admin\\Desktop\\최승현zi존짱짱맨\\miniproject\\src\\main\\webapp\\fileUpload"; // 실제 파일이 저장할 공간
	private String charactSet = "utf-8"; // 전송되는 파일 한글 깨짐 방지
	private int maxSize = 1024 * 1024 * 1024; // 파일 최대 사이즈

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 트레이너 PT 정보 입력
		MemberService dao = new MemberServiceImpl();
		MemberVOCT voct = new MemberVOCT();
		String viewPage = "main/message";
		String fileName = "";
		String originalFileName = "";

		try {
			MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, charactSet,
					new DefaultFileRenamePolicy());

			fileName = multi.getFilesystemName("ufile"); // 물리적 위치에 파일 저장
			originalFileName = multi.getOriginalFileName("ufile"); // 실제 파일명
			voct.setMemberId(multi.getParameter("id"));
			voct.setTrainerPrize(multi.getParameter("memberTrPrize"));
			voct.setTrainerCareer(multi.getParameter("memberTrCareer"));
			voct.setTrainerSns(multi.getParameter("memberTrSNS"));
			voct.setTrainerAttach(originalFileName);
			voct.setTrainerAttachDir(saveFolder + File.separator + fileName);

		} catch (IOException e) {
			e.printStackTrace();
		}

		// 첨부파일이 있을시 이곳에서 처리함
		int n = dao.memberInsert(voct);
		if (n != 0) {
			request.setAttribute("message", "등록 되었습니다.");
		} else {
			request.setAttribute("message", "등록이 실패했습니다.");
		}

		return viewPage;
	}

}
