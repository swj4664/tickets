package com.ticket.biz.member;

public class MemberVO {
	private int mb_no;
	private String mb_id;
	private String mb_pw;
	private String mb_name;
	private String mb_address;
	private int mb_phone;
	private int mb_birth;
	private String mb_email;
	private int mb_check;

	public int getMb_no() {
		return mb_no;
	}

	public void setMb_no(int mb_no) {
		this.mb_no = mb_no;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_pw() {
		return mb_pw;
	}

	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}

	public String getMb_name() {
		return mb_name;
	}

	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}

	public String getMb_address() {
		return mb_address;
	}

	public void setMb_address(String mb_address) {
		this.mb_address = mb_address;
	}

	public int getMb_phone() {
		return mb_phone;
	}

	public void setMb_phone(int mb_phone) {
		this.mb_phone = mb_phone;
	}

	public int getMb_birth() {
		return mb_birth;
	}

	public void setMb_birth(int mb_birth) {
		this.mb_birth = mb_birth;
	}

	public String getMb_email() {
		return mb_email;
	}

	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}

	public int getMb_check() {
		return mb_check;
	}

	public void setMb_check(int mb_check) {
		this.mb_check = mb_check;
	}

	@Override
	public String toString() {
		return "MemberVO [mb_no=" + mb_no + ", mb_id=" + mb_id + ", mb_pw=" + mb_pw + ", mb_name=" + mb_name
				+ ", mb_address=" + mb_address + ", mb_phone=" + mb_phone + ", mb_birth=" + mb_birth + ", mb_email="
				+ mb_email + ", mb_check=" + mb_check + ", toString()=" + super.toString() + "]";
	}

}