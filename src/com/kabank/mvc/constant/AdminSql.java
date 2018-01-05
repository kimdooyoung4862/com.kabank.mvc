package com.kabank.mvc.constant;

public class AdminSql {
	public static final String CREATE_MEMBER=
			"CREATE TABLE Member("
					+" id VARCHAR2(20) PRIMARY KEY,"
					+" pass VARCHAR2(20)," 
					+" name VARCHAR2(20),"
					+" ssn VARCHAR2(20),"
					+" phone VARCHAR2(20),"
					+" email VARCHAR2(20)," 
					+" profile VARCHAR2(20),"
					+" addr VARCHAR2(20)"
					+")";
	public static final String CREATE_ATTEND=
			"CREATE TABLE Attend("
					+"seq NUMBER PRIMARY KEY,"
					+"week varchar2(20),"
					+"status varchar2(20),"
					+"id varchar2(20)"
					+")";
}
