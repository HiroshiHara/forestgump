package jp.co.forestgump.dao;

import java.sql.SQLException;

import jp.co.forestgump.beans.Member;
import jp.co.forestgump.dao.DBConnector;

public class MemberDAO {
	
	public void insert(Member member) {
		String sql = null;
		StringBuilder sb = new StringBuilder();
		sql = "insert into member(membername) values(Hiroshi Hara);";
		try (DBConnector.executeQuery(sql);){
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
