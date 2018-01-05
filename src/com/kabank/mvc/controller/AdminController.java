package com.kabank.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kabank.mvc.bean.MemberBean;
import com.kabank.mvc.constant.path;
import com.kabank.mvc.service.AdminService;
import com.kabank.mvc.serviceimpl.AdminServiceImpl;

@WebServlet({"/admin/main.do","/admin/member_list.do","/admin/create_table.do"})
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("================================서블릿 내부로 들어옴===================================");
		String dir = request.getServletPath().split(path.SEPARATOR)[1];
		String dest = request.getServletPath().split(path.SEPARATOR)[2].split(path.DOT)[0];
		switch(dest) {
		case "main":
			dir = "admin";
			dest = "main";
			break;
		case "member_list" :
			dir = "admin";
			dest = "member_list";
			break;
		case "create_table" :
			dir = "admin";
			dest = "main";
			AdminService service = new AdminServiceImpl();
			service.createTable(request.getParameter("table_name"));
			break;
		}
		request.getRequestDispatcher(path.VIEW+dir+path.SEPARATOR+dest+path.EXTENSION).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}
