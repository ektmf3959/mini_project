package co.mini.prj.member.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVOCT extends MemberVOC {
	private int memberNum;
	private String trainerMemberNum;
	private String trainerPrize;
	private String trainerCareer;
	private String trainerSns;
	private String trainerAttach;
	private String trainerAttachDir;
	private int productNum;
}
