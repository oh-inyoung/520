package com.foods.vo;

import java.sql.Date;

public class MemberVO {
	int memberNo;
	String memberId;
	String memberPw;
	String memberName;
	int admin;
	Date regdate;
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "MemberVO [memberNo=" + memberNo + ", memberId=" + memberId + ", memberPw=" + memberPw + ", memberName="
				+ memberName + ", admin=" + admin + ", regdate=" + regdate + "]";
	}
	
	
	
}
