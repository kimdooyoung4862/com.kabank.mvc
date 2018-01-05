package com.kabank.mvc.daoImpl;
import com.kabank.mvc.constant.CommonSql;
import com.kabank.mvc.constant.DBMS;
//oracle.jdbc.driver.OracleDriver
//jdbc:oracle:thin:@localhost:1521:xe
import com.kabank.mvc.dao.CommonDAO;

import java.sql.*;
public class CommonDAOImpl implements CommonDAO{
	
	@Override
	public String selectTableCount() {
		String count = "";
		try {
			Class.forName(DBMS.ORACLE_DRIVER);
			Connection conn = DriverManager.getConnection(DBMS.ORACLE_CONNECTION,
					DBMS.ORACLE_USERNAME,DBMS.ORACLE_USERPASSWORD);
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(CommonSql.tableName("Member"));
			while(rs.next()) {
				count = rs.getString("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}

}
