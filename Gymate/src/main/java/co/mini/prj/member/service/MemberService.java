package co.mini.prj.member.service;

import java.util.List;
import java.util.Map;

public interface MemberService {
	List<MemberVO> memberSelectList(String str);

	MemberVO memberSelect(MemberVO vo);

	MemberVOC memberSelectData(int no);

	MemberVOCT memberSelectTr(int no);

	MemberVO memberSearch(MemberVO vo);
	
	MemberVO myInfo(MemberVO vo); // Mypage -> 개인정보

	int memberInsert(MemberVO vo);

	int memberInsertData(MemberVOC voc);

	int memberInsertTr(MemberVOCT voct);

	int memberUpdate(MemberVO vo);

	int memberUpdateData(MemberVOC voc);

	int memberUpdateTr(MemberVOCT voct);

	int memberDelete(MemberVO vo);

	boolean isMemberId(String id);
	
	List<Map<String,Object>> trainerSelectList(); // Join결과에 대해 별도 VO를 생성하지 않고 사용하기위함
	
	List<Map<String,Object>> trainerSelect(int num); // Pt 상세정보 1건
	
	int trainerProductUpdate(int num); // trainerData의 productNum 업데이트
}
