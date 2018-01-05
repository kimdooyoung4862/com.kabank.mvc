<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JSP</title>
	<link rel="stylesheet" href= "${pageContext.request.contextPath}/resources/css/common.css" />
	<link rel="stylesheet" href= "${pageContext.request.contextPath}/resources/css/index.css" />
</head>
<body>
<header id="index_header">
	<h1>BIT CAMP SAMPLE PROJECT</h1>
</header>
<section>
<article>
<div   id="wrapper">
	<table id="index_table">
		<tr>
			<td colspan="5">
				<form id="main_go" action="<%=application.getContextPath() %>/user/auth.do">
					<table id="index_login_box">
						<tr>
							<td> 
							<input id="index_input_id" name="index_input_id" type="text" placeholder="ID입력" />
							</td>
							<td rowspan="2">
							<input id="index_input_btn" type="submit" value="로그인"/>
							</td>
						</tr>
						<tr>
							<td>
							<input id="index_input_pass" name="index_input_pass" type="text" placeholder="PASS입력" />
						</tr>
					</table>
				</form>
				<a id="go_admin_link" href="#">
					관리자
				</a>
				<a id="go_join_link" href="#">
					회원가입
				</a>
				<a id="go_jdbc_link" href="#">
					JDBC TEST
				</a>
			</td>
		</tr>
	</table>
</div>
	</article>
</section>
<%@ include file="../common/footer.jsp"%>
	</body>
<script>
	document.querySelector('#go_join_link').addEventListener("click",
	function(){
		location.href = "${pageContext.request.contextPath}/user/join.do";
	},false);
	document.querySelector('#go_jdbc_link').addEventListener("click",
	function(){
		location.href = "${pageContext.request.contextPath}/common/jdbc_test.do";
	},false);
	document.querySelector('#index_input_btn').addEventListener("click",
	function(){
		document.querySelector('#main_go').submit;
	},false);
	document.querySelector('#go_admin_link').addEventListener("click",
	function(){
		location.href = "${pageContext.request.contextPath}/admin/main.do";
	},false);
	
	
</script>
</html>