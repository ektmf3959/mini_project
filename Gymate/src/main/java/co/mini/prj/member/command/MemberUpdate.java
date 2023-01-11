package co.mini.prj.member.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.mini.prj.common.Command;
import co.mini.prj.member.service.MemberService;
import co.mini.prj.member.service.MemberVO;
import co.mini.prj.member.service.MemberVOC;
import co.mini.prj.member.service.MemberVOCT;
import co.mini.prj.member.service.Impl.MemberServiceImpl;

public class MemberUpdate implements Command {

	private String saveFolder = "c:\\fileUploadTest";
	private String charactSet = "UTF-8";
	private int maxSize = 1024 * 1024 * 1024;

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		MemberVOC voc = new MemberVOC();
		MemberVOCT voct = new MemberVOCT();
		String fileName = "";
		String originalFileName = "";

		try {

			MultipartRequest multi = 
					new MultipartRequest(request, saveFolder, maxSize, charactSet, new DefaultFileRenamePolicy());
			fileName = multi.getFilesystemName("file"); 
			originalFileName = multi.getOriginalFileName("file"); 
			vo.setMemberNum(Integer.valueOf(multi.getParameter("memberNum")));
			vo.setMemberId(multi.getParameter("memberId"));
			vo.setMemberPw(multi.getParameter("memberPw"));
			vo.setMemberName(multi.getParameter("memberName"));
			vo.setMemberNickName(multi.getParameter("memberNickName"));
			vo.setMemberAge(Date.valueOf(multi.getParameter("memberAge")));
			vo.setMemberTel(multi.getParameter("memberTel"));
			vo.setMemberAuthor(multi.getParameter("memberAuthor"));
			voc.setMemberAddress(multi.getParameter("memberAddress"));
			voc.setMemberHeight(multi.getParameter("memberHeight"));
			voc.setMemberWeight(multi.getParameter("memberWeight"));
			voc.setMemberGender(multi.getParameter("memberGender"));
			voct.setTrainerPrize(multi.getParameter("trainerPrize"));
			voct.setTrainerCareer(multi.getParameter("trainerCareer"));
			voct.setTrainerSns(multi.getParameter("trainerSns"));
			voct.setTrainerAttach(originalFileName);
			voct.setTrainerAttachDir(saveFolder + File.separator + fileName);
		} catch (IOException e) {
			e.printStackTrace();
		}

		int num = (int) session.getAttribute("memberNum");
        MemberVOC voc2 = dao.memberSelectData(num);

        if (voc2 != null) {
            voc.setMemberNum(num);
            dao.memberUpdateData(voc);
            dao.memberUpdate(vo);
            
            session.setAttribute("memberPw", vo.getMemberPw());
            session.setAttribute("memberName", vo.getMemberName());
            session.setAttribute("memberAge", vo.getMemberAge());
            session.setAttribute("memberTel", vo.getMemberTel());
            
            session.setAttribute("memberAddress", voc2.getMemberAddress());
            session.setAttribute("memberHeight", voc2.getMemberHeight());
            session.setAttribute("memberWeight", voc2.getMemberWeight());
            session.setAttribute("memberGender", voc2.getMemberGender());

            request.setAttribute("vo", vo);
            request.setAttribute("voc", voc);
            if (!vo.getMemberAuthor().equals("CUSTOMER")) {
                
                num = (int) session.getAttribute("memberNum");
                MemberVOCT voct2 = dao.memberSelectTr(num);
                
                if (voct2 != null) {
                    
                    voct.setMemberNum(num);
                    dao.memberUpdateTr(voct);
                    
                } else {
                    
                    voct.setMemberNum(num);
                    dao.memberInsertTr(voct);
                }
                voct2 = dao.memberSelectTr(num);
                session.setAttribute("trainerPrize", voct2.getTrainerPrize());
                session.setAttribute("trainerCareer", voct2.getTrainerCareer());
                session.setAttribute("trainerSns", voct2.getTrainerSns());

                
                request.setAttribute("voct", voct);
            }
        }
        return "mypage/myInfo";
    }
}