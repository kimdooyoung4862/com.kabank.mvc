package com.kabank.mvc.dao;

import java.util.List;

import com.kabank.mvc.bean.MemberBean;

public interface MemberDAO {
	public List<MemberBean> selectMembers();
}
