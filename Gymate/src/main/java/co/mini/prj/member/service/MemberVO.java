package co.mini.prj.member.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {
	
	private int memberNum;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberNickName;
	private Date memberAge;
//	private LocalDateTime memberAge;
	private String memberTel;
	private String memberAuthor;
}
