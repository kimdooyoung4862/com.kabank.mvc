<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>DooYoung</title>
<%@ include file = "../common/head.jsp" %>
	<link rel="stylesheet" href="../../css/admin.css" />
	<script src="../../js/admin/member_list.js"></script>
</head>

<body>
<header id="admin_header"><h2>관리자 페이지</h2></header>
	<aside id="admin_sidebar" >
			관리자 화면<br />
		<a href="#">회원관리</a>
	</aside>
<section id="admin_member_section">
<div >
	<table id="admin_table">
	<tr>
	<th>
	<select id="admin_member_select">
	<option>ID</option>
	<option>이름</option>
	<option>성별</option>
	</select>
	</th>
	<th colspan="5"><input id="admin_member_input" type="text" /></th>
	<th colspan="2"><button id="admin_member_button">검색</button></th>
	</tr>
		<tr id="admin_tr">
			<th>NO</th>
			<th>ID</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>성별</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>주소</th>
		</tr>
		<tr>
		<th colspan="8"><button id="add_member_btn">추가</button></th>
		</tr>
	</table>
	</div>
	</section>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>