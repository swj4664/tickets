package com.ticket.biz.exhibition;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class ExhibitionVO {
	
	private int exh_no;
	private String exh_title;
	private int exh_price;
	private Date exh_st_date; 
	private Date exh_end_date; 
	private Date exh_rge_date; 
	private Date exh_mdf_date; 
	private String exh_location;
	private String exh_hall;
	private String exh_content;
	private String exh_img;
	private String exh_planner;
	private String exh_time;
	private String exh_rating;
	private String exh_artist;
	private float exh_place_x;
	private float exh_place_y;
	private int exh_local_id;
	
	private String searchCondition;
	private String searchKeyword;
	
	private MultipartFile uploadFile;	
	
	private int offset;

	
	
	public int getExh_no() {
		return exh_no;
	}

	public void setExh_no(int exh_no) {
		this.exh_no = exh_no;
	}

	public String getExh_title() {
		return exh_title;
	}

	public void setExh_title(String exh_title) {
		this.exh_title = exh_title;
	}

	public int getExh_price() {
		return exh_price;
	}

	public void setExh_price(int exh_price) {
		this.exh_price = exh_price;
	}

	public Date getExh_st_date() {
		return exh_st_date;
	}

	public void setExh_st_date(Date exh_st_date) {
		this.exh_st_date = exh_st_date;
	}

	public Date getExh_end_date() {
		return exh_end_date;
	}

	public void setExh_end_date(Date exh_end_date) {
		this.exh_end_date = exh_end_date;
	}

	public Date getExh_rge_date() {
		return exh_rge_date;
	}

	public void setExh_rge_date(Date exh_rge_date) {
		this.exh_rge_date = exh_rge_date;
	}

	public Date getExh_mdf_date() {
		return exh_mdf_date;
	}

	public void setExh_mdf_date(Date exh_mdf_date) {
		this.exh_mdf_date = exh_mdf_date;
	}

	public String getExh_location() {
		return exh_location;
	}

	public void setExh_location(String exh_location) {
		this.exh_location = exh_location;
	}

	public String getExh_hall() {
		return exh_hall;
	}

	public void setExh_hall(String exh_hall) {
		this.exh_hall = exh_hall;
	}

	public String getExh_content() {
		return exh_content;
	}

	public void setExh_content(String exh_content) {
		this.exh_content = exh_content;
	}

	public String getExh_img() {
		return exh_img;
	}

	public void setExh_img(String exh_img) {
		this.exh_img = exh_img;
	}

	public String getExh_planner() {
		return exh_planner;
	}

	public void setExh_planner(String exh_planner) {
		this.exh_planner = exh_planner;
	}

	public String getExh_time() {
		return exh_time;
	}

	public void setExh_time(String exh_time) {
		this.exh_time = exh_time;
	}

	public String getExh_rating() {
		return exh_rating;
	}

	public void setExh_rating(String exh_rating) {
		this.exh_rating = exh_rating;
	}

	public String getExh_artist() {
		return exh_artist;
	}

	public void setExh_artist(String exh_artist) {
		this.exh_artist = exh_artist;
	}

	public float getExh_place_x() {
		return exh_place_x;
	}

	public void setExh_place_x(float exh_place_x) {
		this.exh_place_x = exh_place_x;
	}

	public float getExh_place_y() {
		return exh_place_y;
	}

	public void setExh_place_y(float exh_place_y) {
		this.exh_place_y = exh_place_y;
	}

	public int getExh_local_id() {
		return exh_local_id;
	}

	public void setExh_local_id(int exh_local_id) {
		this.exh_local_id = exh_local_id;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}
	
	
}
