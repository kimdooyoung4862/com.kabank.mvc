<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bitcamp.css" />
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
<article>
	<h1>비트캠프 메인</h1>
</article>
</section>
	<form action="result.jsp">
	<table id="bit_main">
			<tr>
				<td>상 태</td>
				<td>월</td>
				<td>화</td>
				<td>수</td>
				<td>목</td>
				<td>금</td>
			</tr>
			<tr>
				<td>결 석</td>
				<td><input type="radio" name="monday" value="absent" checked="checked" /></td>
				<td><input type="radio" name="tuesday" value="absent" checked="checked" /></td>
				<td><input type="radio" name="wednesday" value="absent" checked="checked" /></td>
				<td><input type="radio" name="thursday" value="absent" checked="checked" /></td>
				<td><input type="radio" name="friday" value="absent" checked="checked" /></td>
			</tr>
			<tr>
				<td>지 각</td>
				<td><input type="radio" name="monday" value="late" /></td>
				<td><input type="radio" name="tuesday" value="late" /></td>
				<td><input type="radio" name="wednesday" value="late" /></td>
				<td><input type="radio" name="thursday" value="late" /></td>
				<td><input type="radio" name="friday" value="late" /></td>
			</tr>
			<tr>
				<td>조 퇴</td>
				<td><input type="radio" name="monday" value="early_leave" /></td>
				<td><input type="radio" name="tuesday" value="early_leave" /></td>
				<td><input type="radio" name="wednesday" value="early_leave" /></td>
				<td><input type="radio" name="thursday" value="early_leave" /></td>
				<td><input type="radio" name="friday" value="early_leave" /></td>
			</tr>
			<tr>
				<td>출 석</td>
				<td><input type="radio" name="monday" value="attend"/></td>
				<td><input type="radio" name="tuesday" value="attend" /></td>
				<td><input type="radio" name="wednesday" value="attend" /></td>
				<td><input type="radio" name="thursday" value="attend" /></td>
				<td><input type="radio" name="friday" value="attend" /></td>
			</tr>
			<tr>
				<td>결과</td>
				<td><input type="text" name="result" /></td>
				<td><input type="text" name="result" /></td>
				<td><input type="text" name="result" /></td>
				<td><input type="text" name="result" /></td>
				<td><input type="text" name="result" /></td>
			</tr>
			<tr>
				<td colspan="6">
					<input type="hidden" name="id" value="skyfor1004" />
					<button id="attend_result">확인</button>
				</td>
			</tr>
	</table>
	</form>
<%@ include file="../common/footer.jsp" %>	
	</body>
	<script src="../../js/bitcamp/bitcamp.js"></script>
</html>