package jp.co.forestgump.beans;

import java.io.Serializable;
import java.util.Date;

public class Member implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int memberid;
	private int memberid_nk;
	private String membername;
	private long memberpict;
	private Date registdate;
	private String[] instruments;
	private String text;
	
	public Member(int memberid, int memberid_nk, String membername, long memberpict, Date registdate,
			                String[] instruments, String text) {
		this.memberid = memberid;
		this.memberid_nk = memberid_nk;
		this.membername = membername;
		this.memberpict = memberpict;
		this.registdate = registdate;
		this.instruments = instruments;
		this.text = text;
	}

	public Date getRegistdate() {
		return registdate;
	}

	public void setRegistdate(Date registdate) {
		this.registdate = registdate;
	}

	public int getMemberid() {
		return memberid;
	}

	public int getMemberid_nk() {
		return memberid_nk;
	}

	public String getMembername() {
		return membername;
	}

	public long getMemberpict() {
		return memberpict;
	}

	public String[] getInstruments() {
		return instruments;
	}

	public String getText() {
		return text;
	}
	
	// テスト用メインメソッド
	public static void main(String[] args) {
		Date registdate = new Date();
		String[] instruments = {"drum", "perc"};
		Member member = new Member(1000, 1000, "Hiroshi Hara", 4681856, registdate, instruments, "test");
		System.out.println(member.getRegistdate());
		
	}
}
