package co.mini.prj.member.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVOC extends MemberVO {
	private int memberNum;
	private String memberAddress;
	private String memberHeight;
	private String memberWeight;
	private String memberGender;
}
