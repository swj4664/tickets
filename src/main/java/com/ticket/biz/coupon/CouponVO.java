package com.ticket.biz.coupon;

public class CouponVO {
	private int c_num;
	private String c_name;
	private int c_per;
	private String c_date;

	private String mb_id;
	private int offset;

	public int getC_num() {
		return c_num;
	}

	public void setC_num(int c_num) {
		this.c_num = c_num;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public int getC_per() {
		return c_per;
	}

	public void setC_per(int c_per) {
		this.c_per = c_per;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public String getC_date() {
		return c_date;
	}

	public void setC_date(String c_date) {
		this.c_date = c_date;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}





}
