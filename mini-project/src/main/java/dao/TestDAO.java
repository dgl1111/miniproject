package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import model.User;

public class TestDAO{
	 private String jdbcURL = "jdbc:mysql://localhost:3306/mini";
	    private String jdbcUsername = "root";
	    private String jdbcPassword = "test1234";
	    private Connection conn;

	    // 데이터베이스 연결
	    protected void connect() throws SQLException {
	        if (conn == null || conn.isClosed()) {
	            try {
	                Class.forName("com.mysql.jdbc.Driver");
	            } catch (ClassNotFoundException e) {
	                throw new SQLException(e);
	            }
	            conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	        }
	    }
	
	    
	
	       public String userName() {
	    	   
	        	return "철수";
	        	 
	        	
}
	        
	        public User userDB() throws SQLException {
	        	//리턴타입이 User 이기 때문에 User로 바꾼다.
	        	
	        	connect();	//db연결
	        	Statement stmt = conn.createStatement(); //쿼리 호출, SQL 쿼리 실행을 위한 Statement 객체 생성
	        	String query = "SELECT * FROM TBL_USER";   // 실행할 SQL 쿼리 정의
	        	ResultSet rs = stmt.executeQuery(query);	//executeQuery로 쿼리 실행.  쿼리 보관 rs. 
	        	
	        	
	        	
//	        	while(rs.next()) {
//	        		데이터 검색
//	        	}
	        	
	        	// ResultSet에서 각 열의 데이터를 읽어옴
	        	rs.next();	//rs의 첫번째 행으로 이동
	        	String id = rs.getString("userId");
	            String name = rs.getString("name");
	            String status = rs.getString("status");
	            
	            // User 객체 생성
	            User user = new User(id, name, status);
	        	
	            // User 객체 반환
	        	return user;
	        
}
	        
}
