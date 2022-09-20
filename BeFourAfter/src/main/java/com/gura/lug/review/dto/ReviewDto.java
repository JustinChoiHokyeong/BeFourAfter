package com.gura.lug.review.dto;

import org.springframework.web.multipart.MultipartFile;

public class ReviewDto {
	private int num;
	private String writer;
	private String title;
	private String imagePath;
	private String regdate;
	private int viewCount; //조회수
	private String rating; // 평점
	private String reservetype; //예약타입
	private int startRowNum;
	private int endRowNum;
	private int prevNum; //이전글의 글번호
	private int nextNum; //다음글의 글번호
	private MultipartFile image;	//이미지 파일 업로드 처리를 위한 필드
	
	public ReviewDto() {}

	public ReviewDto(int num, String writer, String title, String imagePath, String regdate, int viewCount, String rating,
			String reservetype, int startRowNum, int endRowNum, int prevNum, int nextNum, MultipartFile image) {
		super();
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.imagePath = imagePath;
		this.regdate = regdate;
		this.viewCount = viewCount;
		this.rating = rating;
		this.reservetype = reservetype;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.prevNum = prevNum;
		this.nextNum = nextNum;
		this.image = image;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getReservetype() {
		return reservetype;
	}

	public void setReservetype(String reservetype) {
		this.reservetype = reservetype;
	}

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}

	public int getPrevNum() {
		return prevNum;
	}

	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}

	public int getNextNum() {
		return nextNum;
	}

	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	
}

