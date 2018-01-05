package com.kabank.mvc.serviceimpl;

import java.util.List;

import com.kabank.mvc.bean.MemberBean;
import com.kabank.mvc.dao.MemberDAO;
import com.kabank.mvc.daoImpl.MemberDAOImpl;
import com.kabank.mvc.service.MemberService;

public class MemberServiceImpl implements MemberService{

	@Override
	public boolean login(MemberBean member) {
		boolean foo = false;
		MemberDAO dao = new MemberDAOImpl();
		List<MemberBean> list = dao.selectMembers();
		for(int i=0;i<list.size();i++) {
			if(member.getId().equals(list.get(i).getId()) && member.getPass().equals(list.get(i).getPass())) {
				foo = true;
				break;
				}
			}
		return foo;
	}
}
