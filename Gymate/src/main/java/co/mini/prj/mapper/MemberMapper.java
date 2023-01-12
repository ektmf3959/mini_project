package co.mini.prj.mapper;

import java.util.List;
import java.util.Map;

import co.mini.prj.member.service.MemberVO;
import co.mini.prj.member.service.MemberVOC;
import co.mini.prj.member.service.MemberVOCT;

public interface MemberMapper {
	List<MemberVO> memberSelectList(String str);

	MemberVO memberSelect(MemberVO vo);

	MemberVOC memberSelectData(int no);

	MemberVOCT memberSelectTr(int no);

	MemberVO memberSearch(MemberVO vo);
	
	MemberVO myInfo(MemberVO vo);

	int memberInsert(MemberVO vo);

	int memberInsertData(MemberVOC voc);

	int memberInsertTr(MemberVOCT voct);

	int memberUpdate(MemberVO vo);

	int memberUpdateData(MemberVOC voc);

	int memberUpdateTr(MemberVOCT voct);

	int memberDelete(MemberVO vo);

	boolean isMemberId(String id);

	List<Map<String,Object>> trainerSelectList();
	
	List<Map<String,Object>> trainerSelect(int num);
	
	int trainerProductUpdate(int num);

}
