package com.kabank.mvc.daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kabank.mvc.bean.MemberBean;
import com.kabank.mvc.constant.DBMS;
import com.kabank.mvc.dao.MemberDAO;

public class MemberDAOImpl implements MemberDAO{

	@Override
	public List<MemberBean> selectMembers() {
		List<MemberBean> list = new ArrayList<MemberBean>();
				try {
					Class.forName(DBMS.ORACLE_DRIVER);
					Connection conn = DriverManager.getConnection(DBMS.ORACLE_CONNECTION,DBMS.ORACLE_USERNAME,DBMS.ORACLE_USERPASSWORD);
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery("SELECT id,pass FROM Member");
					while(rs.next()) {
						MemberBean member = new MemberBean();
						member.setId(rs.getString("id"));
						member.setPass(rs.getString("pass"));
						list.add(member);
					}
				} catch (Exception e) {
					e.printStackTrace();
			}
		return list;

	}
}