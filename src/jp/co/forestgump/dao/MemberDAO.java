package jp.co.forestgump.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import jp.co.forestgump.beans.Member;

public class MemberDAO {
	
	private String url;
	private String user;
	private String password;
	
	public MemberDAO() {
		this.url = "jdbc:postgresql://127.0.0.1:5432";
		this.user = "fgjw";
		this.password = "fgjw";
	}
	
	public boolean insertMember(Member member) {
		Connection conn = null;
		try {
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection(url, user, password);
			String sql = "insert into member(member, memberid_nk, membername, memberpict, registdate)"
					+ "values(?, ?, ?, ?, ?)";
			
		}
	}
}
