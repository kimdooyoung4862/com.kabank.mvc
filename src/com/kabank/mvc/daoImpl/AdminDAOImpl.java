package com.kabank.mvc.daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kabank.mvc.constant.AdminSql;
import com.kabank.mvc.constant.DBMS;
import com.kabank.mvc.dao.AdminDAO;

public class AdminDAOImpl implements AdminDAO{

	@Override
	public List<String> createTable(String tname) {
		List<String> foo = new ArrayList<>();
		try {
			Class.forName(DBMS.ORACLE_DRIVER);
			Connection conn = DriverManager.getConnection(DBMS.ORACLE_CONNECTION,DBMS.ORACLE_USERNAME,DBMS.ORACLE_USERPASSWORD);
			Statement stmt = conn.createStatement();
			String sql = "SELECT * FROM tab";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				String temp = rs.getString("TNAME");
				foo.add(temp);
			}
			boolean exist = true;
			for(int i=0;i<foo.size();i++){
				if(foo.get(i).equalsIgnoreCase(tname)){
					exist = false;
					break;
				}
			}
			if(exist) {
				if(tname.equalsIgnoreCase("member")) {
				stmt.executeUpdate(AdminSql.CREATE_MEMBER);
				stmt.executeUpdate(sql);
				System.out.println("멤버만듬");
				}else if(tname.equalsIgnoreCase("attend")) {
				stmt.executeUpdate(AdminSql.CREATE_ATTEND);
				stmt.executeUpdate(sql);
				System.out.println("attend만듬");
				}
			}
			
			} catch (Exception e) {
				e.printStackTrace();
		}
		return foo;
	}
}
