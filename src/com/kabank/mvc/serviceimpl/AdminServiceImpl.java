package com.kabank.mvc.serviceimpl;


import com.kabank.mvc.dao.AdminDAO;
import com.kabank.mvc.daoImpl.AdminDAOImpl;
import com.kabank.mvc.service.AdminService;

public class AdminServiceImpl implements AdminService{
	AdminDAO ad;
	
	public AdminServiceImpl() {
		ad = new AdminDAOImpl();
	}
	@Override
	public void createTable(String tname) {
		ad.createTable(tname);
	}

}
