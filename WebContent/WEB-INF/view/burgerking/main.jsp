<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<body>
<%@ include file="../common/header.jsp" %>
	<%@ include file="../common/nav.jsp" %>
	<section>
	<article>
		<header>
			<hgroup>
				<h1><mark>버거킹</mark> 주문 화면</h1>
				<h2>상품과 수량을 선택해 주세요</h2>
			</hgroup>
		</header>
	</article>
	<article>
<div id="wrapper">
			<form id="order_form" action="result.jsp" >
				<table style="width: 400px; height: 400px; margin: 0 auto">
					<tr>
						<td>
						<figure>
							<img src="<%=application.getContextPath() %>/resources/img/hamburger.jpg" style="height: 150px; width: 150px" alt="" />
							<figcaption>
								<input type="checkbox" name="menu" value="hamburger" />햄버거 : 5,500원<br />
								<input type="number" name="hamburger-count" style="width: 40px" min="1" max="9"/> 개
							</figcaption>
						</figure>
						</td>
						<td>
						<figure>
							<img src="<%=application.getContextPath() %>/resources/img/salad.jpg" style="height: 150px; width: 150px" alt="" />
							<figcaption>
								<input type="checkbox" name="menu" value="salad" />샐러드 : 2,000원<br />
								<input type="number" name="salad-count" style="width: 40px" min="1" max="9"/> 개
							</figcaption>
						</figure>
						</td>
						<td>
						<figure>
							<img src="<%=application.getContextPath() %>/resources/img/coke.jpg" style="height: 150px; width: 150px" alt="" />
							<figcaption>
								<input type="checkbox" name="menu" value="coke" />콜라 : 1,500원<br />
								<input type="number" name="coke-count" style="width: 40px" min="1" max="9"/> 개
							</figcaption>
						</figure>
						</td>
					</tr>
					<tr>
						<td>
						<figure>
							<img src="<%=application.getContextPath() %>/resources/img/coffee.jpg" style="height: 150px; width: 150px" alt="" />
							<figcaption>
								<input type="checkbox" name="menu" value="coffee" />커피 : 900원<br />
								<input type="number" name="coffee-count" style="width: 40px" min="1" max="9"/> 개
							</figcaption>
						</figure>
						</td>
						<td>
						<figure>
							<img src="<%=application.getContextPath() %>/resources/img/chip.jpg" style="height: 150px; width: 150px" alt="" />
							<figcaption>
								<input type="checkbox" name="menu" value="chip" />감자 : 1,200원<br />
								<input type="number" name="chip-count" style="width: 40px" min="1" max="9"/> 개
							</figcaption>
						</figure>
						</td>
						<td>
						<figure>
							<img src="<%=application.getContextPath() %>/resources/img/bagel.jpg" style="height: 150px; width: 150px" alt="" />
							<figcaption>
								<input type="checkbox" name="menu" value="bagel" />베이글 : 2,800원<br />
								<input type="number" name="bagel-count" style="width: 40px" min="1" max="9"/> 개
							</figcaption>
						</figure>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<input type="radio" name="place" value="매장식사"  checked="checked"/>매장식사
							<input type="radio" name="place" value="테이크아웃" />테이크아웃
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<input type="hidden" name="hamburger" value="5500" />
							<input type="hidden" name="coke" value="1500" />
							<input type="hidden" name="chip" value="1200" />
							<input type="hidden" name="coffee" value="900" />
							<input type="hidden" name="salad" value="2000" />
							<input type="hidden" name="bagel" value="2800" />
							<input id="burgerking_order_btn" type="button" value="전송" style="width: 100px; margin-left: 300px"/>
						</td>
					</tr>
				</table>	
			</form>
	</div>
			</article>
		</section>
	<aside></aside>
<%@ include file="../common/footer.jsp" %>
	</body>
	<script src="../../js/burgerking/burgerking.js"></script>
</html>
