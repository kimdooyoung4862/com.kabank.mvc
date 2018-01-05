<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>DooYoung</title>
	<%@ include file = "../common/head.jsp" %>
	<script src="../../js/admin/main.js"></script>
</head>

<body>
<header id="admin_header"><h2>관리자 페이지</h2></header>
	<aside id="admin_sidebar" >
		관리자 화면<br />
		<a id="member_mgmt_link">회원관리</a>
	</aside>
<section style="margin-left: 10px;">
<div >
	<table id="admin_table">
		<tr>
			<td > <button id="admin_btn"> 멤버리스트</button> </td>
			<td >테이블</td>
			<td >테이블</td>
		</tr>
		<tr>
			<td >테이블</td>
			<td >테이블</td>
			<td >테이블생성<br />
				<form id="table_create"action="${pageContext.request.contextPath}/admin/create_table.do">
				<select name="table_name">
					<option value="member">회원테이블</option>
					<option value="attend">출석테이블</option>
				</select>
				<button id="create">생 성</button><br />
				</form>
			</td>
		</tr>
	</table>
	</div>
	</section>
	<%@ include file="../common/footer.jsp"%>
</body>
<script>
	document.querySelector('#admin_btn').addEventListener("click",
	function(){
		location.href = "${pageContext.request.contextPath}/admin/member_list.do";
	},false);
	document.querySelector('#create').addEventListener("click",
	function(){
		document.querySelector('#table_create').submit;
	},false);
</script>
</html>
