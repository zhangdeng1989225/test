package db;
import java.sql.*;
public class DB {
	private String url = "jdbc:mysql://localhost:3306/test";
	private String user = "root"; // 数据库用户名
	private String password = "123456";

	private Connection conn = null; // 数据库连接对象
	private Statement stmt = null; // 数据库连接状态对象
	private ResultSet rs = null; // 数据库查询结果集

	public DB() { //使用JDBC建立数据库连接
		try {
			Class.forName("com.mysql.jdbc.Driver"); //括号里边为驱动程序名

		} catch (java.lang.ClassNotFoundException e) {
			System.err.println("DB():" + e.getMessage());
		}
	}

	public ResultSet executeQuery(String sql) {
		try {
			conn = DriverManager.getConnection(url, user, password); // 获得数据库连接
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
					ResultSet.CONCUR_READ_ONLY); // 建立Statement对象
			rs = stmt.executeQuery(sql);
		} catch (SQLException ex) {
			System.err.println("DB.executeQuery:" + ex.getMessage());
		}
		return rs;
	}

	public void executeUpdate(String sql) {
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();
		} catch (SQLException ex) {
			System.err.println("DB.executeUpdate: " + ex.getMessage());
		}
	}

	public void closeStmt() {
		try {
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
