package com.kabank.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kabank.mvc.bean.MemberBean;
import com.kabank.mvc.constant.path;
import com.kabank.mvc.service.MemberService;
import com.kabank.mvc.serviceimpl.MemberServiceImpl;

@WebServlet({"/user/login.do","/user/join.do","/user/auth.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String dir = request.getServletPath().split(path.SEPARATOR)[1];
		String dest = request.getServletPath().split(path.SEPARATOR)[2].split(path.DOT)[0];
		switch (dest) {
		case "auth":
				MemberBean member = new MemberBean();
				member.setId(request.getParameter("index_input_id"));
				member.setPass(request.getParameter("index_input_pass"));
				MemberService service = new MemberServiceImpl();
				boolean flag = service.login(member);
				System.out.println("결과" + flag);
				if(flag) {
					dir = "bitcamp";
					dest = "main";					
				}else {
					dir = "user";
					dest = "login";	
				}
				request.getRequestDispatcher(path.VIEW+dir+path.SEPARATOR+dest+path.EXTENSION).forward(request, response);
			break;
		}
			request.getRequestDispatcher(path.VIEW+dir+path.SEPARATOR+dest+path.EXTENSION).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
