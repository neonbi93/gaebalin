<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="main.jsp">
<meta name="viewport"
	conetent="width-device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="${context}/introduce/css/0.css">
<link rel="stylesheet" href="${context}/introduce/css/main.css">
<link rel="stylesheet" href="static/css/bootstrap/css/bootstrap.css">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap"
	rel="stylesheet">
<title>개발인</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.1.0.min.js"></script>

<script>
	$(document).ready(function() {
		$('.mobile_toggle_menu').click(function() {
			$('.mobile_toggle_menu_fade').fadeIn(700);
		});
		$('.toggle_close').click(function() {
			$('.mobile_toggle_menu_fade').fadeOut(700);
		});
		$('.aboutme_anchor').click(function() {
			$('.mobile_toggle_menu_fade').fadeOut(700);
			var offset = $('#aboutme_section').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 400);
		});

		$('.photo_anchor').click(function() {
			$('.mobile_toggle_menu_fade').fadeOut(700);
			var offset = $('#photo_section').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 400);
		});

	});
</script>
</head>
<c:set var="homeUrl">${context}/work/product/goMain.do</c:set>
<body>
	<div class="wrap">
		<header id="header_section">
			<div class="sub_header">
				<div class="menu">
					<div class="name">
						<h1>
							<a href="${homeUrl}" font-size="20">개발인</h1>
					</div>
					<nav class="pc_menu">
						<ul>
							<li><a class="aboutme_anchor">About me</a></li>
							<li><a class="photo_anchor">기획 의도</a></li>

						</ul>
					</nav>
					<div class="mobile_toggle_menu">
						<span class="menu_icon"><a><img
								class="mobile_toggle_menu" src="${context}/introduce/introduce_image/do.png"></a></span>
					</div>
					<div class="mobile_toggle_menu_fade">
						<span class="toggle_close"><a><img
								src="${context}/introduce/introduce_image/x.png"></a></span>
						<ul>
							<li><a class="aboutme_anchor">About me</a></li>
							<li><a class="photo_anchor">기획 의도</a></li>
						</ul>
					</div>
				</div>
				<div class="introduce_section">
					<h1>
						Hello, I'm <br> gaebal in
					</h1>
					<h1>
						팀장 양형규<br> 부팀장 이현진<br> 팀원 권승현<br> 팀원 박완기<br>
						팀원 신승철<br>
					</h1>

				</div>
			</div>
			<div class="main_image_section">
				<img src="static/resource/profile.jpg">
			</div>
		</header>
		<section id="aboutme_section">
			<h1>About Me</h1>
			<div class="sub_aboutme">
				<p>안녕하세요! 저희 개발인은 팀장 양형규, 부팀장 이현진,<br>
				팀원 권승현, 팀원 박완기, 팀원 신승철 이루어진 팀입니다.</p>
			</div>
		</section>
		<section id="photo_section">
			<h1>기획 의도</h1>
			<p><img src="${context}/introduce/introduce_image/photo.png" align="left" width="300"> 
			<br>현 정부 정책의 기조로
			한국형 뉴딜이 떠오르고 있는 요즘 시대 수 많은 개발자들이 배출되고 있다.
			저변의 확대로 수많은 개발자가 양성되고 있지만,
			<br><strong>현실은 프로그래머를 꿈꾸지만 제대로 된 정보지식을 습득하기가 어렵다.<strong></strong><br><p>
			
			
			<p><img src="${context}/introduce/introduce_image/photo1.png" align="right" width="300">
			이러한 상황에 맞춰 비전공자 및
			전 현직 개발자들이 서로 소통하여 개발자들만의 지식 공유,<br>
			 개발언어 트랜드 및 다양한 컨퍼런스,<br>
			  소규모 강좌, 무료강좌 등을 소개, 
			IT관련 정보 권장도서를 실시간으로 추천하여 베스트셀러 순위 정보를 소개하고
			<br> 제공하며 구매 할 수 있게 도움을 드리는
			서점 그 이상의 가치를 지닌 지식정보문화기업이다.<p>

		</section>

	</div>
		<jsp:include page="../common/foot.jsp"></jsp:include>
</body>
</html>