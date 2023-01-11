package co.mini.prj.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PayVO {

	private int payNum;
	private int payPlan;
	private int price;
	private int memberNum;
	private int productNum;
	private Date payDate;
	private String payAuthor;
	public int getPayNum() {
		return payNum;
	}
	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}
	public int getPayPlan() {
		return payPlan;
	}
	public void setPayPlan(int payPlan) {
		this.payPlan = payPlan;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	public String getPayAuthor() {
		return payAuthor;
	}
	public void setPayAuthor(String payAuthor) {
		this.payAuthor = payAuthor;
	}

}
