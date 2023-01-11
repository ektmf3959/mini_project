package co.mini.prj.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PointVO {
	private int memberNum;
	private int payNum;
	private int point;
	private int pointUse;
	private int pointSum;
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public int getPayNum() {
		return payNum;
	}
	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getPointUse() {
		return pointUse;
	}
	public void setPointUse(int pointUse) {
		this.pointUse = pointUse;
	}
	
}
