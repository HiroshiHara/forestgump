package jp.co.forestgump.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnector {
	
	static Connection conn = null;
	static PreparedStatement pStmt = null;
	static ResultSet rset = null;
	
	static String url = "jdbc:postgresql://127.0.0.1:5432/fgjw";
	static String user = "fgjw";
	static String password = "fgjw";
	
	private DBConnector() {
		
	}
	
	/**
	 * DBへ接続した後、引数で与えられてたSQLのResultSetを返す。
	 * @param sql SQL文
	 * @return SQLのResultSet
	 * @throws SQLException
	 */
	public static ResultSet executeQuery(String sql) throws SQLException {
		conn = DriverManager.getConnection(url, user, password);
		pStmt = conn.prepareStatement(sql);
		rset = pStmt.executeQuery();
		return rset;
	}
}
