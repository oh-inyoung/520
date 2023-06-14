package com.foods.vo;

import java.sql.Date;
import org.springframework.stereotype.Component;

@Component
public class CustomerVO {
	int Customerno;  //회원문의 번호
	String CustomerTitle; //제목
	String CustomerContent; //내용
	String CustomerWriter; //작성자 id
	Date CustomerRegdate; //작성일
	int CustomerCnt;  //조회수    --board 테이블
	String memberName; //작성자 --member 테이블(Join)
	int CustomerReply; //댓글         --reply 테이블(Join)
	
	public int getCustomerno() {
		return Customerno;
	}
	public void setCustomerno(int customerno) {
		Customerno = customerno;
	}
	public String getCustomerTitle() {
		return CustomerTitle;
	}
	public void setCustomerTitle(String customerTitle) {
		CustomerTitle = customerTitle;
	}
	public String getCustomerContent() {
		return CustomerContent;
	}
	public void setCustomerContent(String customerContent) {
		CustomerContent = customerContent;
	}
	public String getCustomerWriter() {
		return CustomerWriter;
	}
	public void setCustomerWriter(String customerWriter) {
		CustomerWriter = customerWriter;
	}
	public Date getCustomerRegdate() {
		return CustomerRegdate;
	}
	public void setCustomerRegdate(Date customerRegdate) {
		CustomerRegdate = customerRegdate;
	}
	public int getCustomerCnt() {
		return CustomerCnt;
	}
	public void setCustomerCnt(int customerCnt) {
		CustomerCnt = customerCnt;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public int getCustomerReply() {
		return CustomerReply;
	}
	public void setCustomerReply(int customerReply) {
		CustomerReply = customerReply;
	}
	@Override
	public String toString() {
		return "CustomerVO [Customerno=" + Customerno + ", CustomerTitle=" + CustomerTitle + ", CustomerContent="
				+ CustomerContent + ", CustomerWriter=" + CustomerWriter + ", CustomerRegdate=" + CustomerRegdate
				+ ", CustomerCnt=" + CustomerCnt + ", memberName=" + memberName + ", CustomerReply=" + CustomerReply
				+ "]";
	}
	
	
}
