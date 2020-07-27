package Beans;

public class Transaction {
	int flatno;
	int month;
	int year;
	int payrent;
	int maintainance;
	int parking;
	int delay;
	int status;
	public int getFlatno() {
		return flatno;
	}
	public void setFlatno(int flatno) {
		this.flatno = flatno;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getPayrent() {
		return payrent;
	}
	public void setPayrent(int payrent) {
		this.payrent = payrent;
	}
	public int getMaintainance() {
		return maintainance;
	}
	public void setMaintainance(int maintainance) {
		this.maintainance = maintainance;
	}
	public int getParking() {
		return parking;
	}
	public void setParking(int parking) {
		this.parking = parking;
	}
	public int getDelay() {
		return delay;
	}
	public void setDelay(int delay) {
		this.delay = delay;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Transaction [flatno=" + flatno + ", month=" + month + ", year=" + year + ", payrent=" + payrent
				+ ", maintainance=" + maintainance + ", parking=" + parking + ", delay=" + delay + ", status=" + status
				+ "]";
	}
	
}
