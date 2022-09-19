package com.gura.lug.reserve.dto;

public class ReserveDto {
	private int num;
	//예약자
	private String name;
	private String phone;
	private String id;
	//수령자
	private String rname;
	private String rphone;
	//수하물 받을 주소
	private String addr;
	//날짜
	private String rsdate;
	//수하물 수령지
	private String place;
	//수하물 종류 (basic : 기본, big : 대형, over : 초과)
	private int basic;
	private int big;
	private int over;
	//예약 종류 (출, 입국 서비스)
	private String reservetype;
	//페이징
	private int startRowNum;
	private int endRowNum;
	
	public ReserveDto() {}

	public ReserveDto(int num, String name, String phone, String id, String rname, String rphone, String addr,
			String rsdate, String place, int basic, int big, int over, String reservetype, int startRowNum,
			int endRowNum) {
		super();
		this.num = num;
		this.name = name;
		this.phone = phone;
		this.id = id;
		this.rname = rname;
		this.rphone = rphone;
		this.addr = addr;
		this.rsdate = rsdate;
		this.place = place;
		this.basic = basic;
		this.big = big;
		this.over = over;
		this.reservetype = reservetype;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRphone() {
		return rphone;
	}

	public void setRphone(String rphone) {
		this.rphone = rphone;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getRsdate() {
		return rsdate;
	}

	public void setRsdate(String rsdate) {
		this.rsdate = rsdate;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getBasic() {
		return basic;
	}

	public void setBasic(int basic) {
		this.basic = basic;
	}

	public int getBig() {
		return big;
	}

	public void setBig(int big) {
		this.big = big;
	}

	public int getOver() {
		return over;
	}

	public void setOver(int over) {
		this.over = over;
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
	
}