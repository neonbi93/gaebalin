<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Undeviating 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20140322

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
div>#menu>ul>li.active-color {
	color: #000;
}

#menu ul ul {
	display: none;
}

#menu a:hover {
	border-bottom: 5px solid #FAED7D;
}

#menu ul ul {
	display: none;
	position: absolute;
	background-color: gray;
}

.submenu {
	height: 0px;	
	transition: height .2s;
/*	width: 600px;	*/
/*	float: left;	*/
}

#menu ul li:hover ul {
	display: block;
	color: red;
	background-color: #dddddd;
}

#menu ul ul li {
	float: none;
}

li {
	cursor: pointer;
}

a {
	text-decoration: none !important;
}
</style>
<script>
	
</script>
<!--   <script>
 $(document).ready(function() {
    $("div#menu").onclick(function(){
    	$(this).find('ul>li').css(' background','white');
    })
</script>-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>개발인</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial"
	rel="stylesheet" />
<script src="${context}/js/common.js"></script>
<script src="${context}/js/bootstrap.min.js"></script>

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<c:set var="homeUrl">${context}/work/product/goMain.do</c:set>
<c:set var="loginUrl">${context}/work/user/goLogin.do</c:set>

<c:set var="javaUrl">${context}/work/product/retrieveProductList.do?category=JA</c:set>
<c:set var="pythonUrl">${context}/work/product/retrieveProductList.do?category=PY</c:set>
<c:set var="educationUrl">${context}/work/product/retrieveProductList.do?category=ED</c:set>
<c:set var="clanguageUrl">${context}/work/product/retrieveProductList.do?category=CC</c:set>

<c:set var="conUrl">${context}/work/event/retrieveEventList.do?category=CON</c:set>
<c:set var="metUrl">${context}/work/event/retrieveEventList.do?category=MET</c:set>
</head>
<body>
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<span class="icon icon-cog"></span>
	
				<h1>
					<a href="${context}/work/product/goMain.do">개발인</a>
				</h1>
			</div>
			<div id="menu">
				<ul>
					<li class="active"><a href="${context}/work/product/goMain.do" title="">Home</a></li>
					<c:if test="${sessionScope.grade != 'M'}">
						<li class=""><a href="${context}/work/introduce/main.do"
							accesskey="2" title="">용어 소개</a></li>
						<li><a href="${context}/work/product/retrieveProductList.do">도서구매</a>
							<ul class="submenu">
								<li><a href="${context}/work/product/retrieveProductListPop.do"
									style="color: black; font-size: 10px;">인기 도서&nbsp;</a></li>
								<li><a href="${context}/work/product/retrieveProductList.do?productCategoryCd=JA"
									style="color: black; font-size: 10px;">자바&nbsp;</a></li>
								<li><a href="${context}/work/product/retrieveProductList.do?productCategoryCd=PY"
									style="color: black; font-size: 10px;">파이썬&nbsp;</a></li>
								<li><a href="${context}/work/product/retrieveProductList.do?productCategoryCd=ED"
									style="color: black; font-size: 10px;">교양서적&nbsp;</a></li>
								<li><a href="${context}/work/product/retrieveProductList.do?productCategoryCd=CC"
									style="color: black; font-size: 10px;">C언어&nbsp;</a></li>
							</ul>
						</li>
						<li><a href="${context}/work/event/retrieveEventList.do">강연과 모임</a>
							<ul class="submenu">
								<li><a href="${context}/work/event/retrieveEventList.do?eventCategoryCd=CON"
									style="color: black; font-size: 10px;">강연&nbsp;</a></li>
								<li><a href="${context}/work/event/retrieveEventList.do?eventCategoryCd=MET"
									style="color: black; font-size: 10px;">모임&nbsp;</a></li>
							</ul>
						</li>
					</c:if>
					<li><a href="${context}/work/board/retrieveBoardList.do"
						title="">게시판</a>
					</li>
					<li><a href="${context}/work/sche/retrieveScheList.do"
						title="">공지사항</a>
					</li>
					<li>
						<c:if test="${sessionScope.id == null}">
							<a href="${context}/work/user/createUser.do" title="">회원가입</a>
						</c:if>
					<c:if test="${sessionScope.id != null && sessionScope.grade != 'M'}">
						<li><a href="#">마이페이지</a>
							<ul class="submenu">
								<li><a href="${context}/work/user/updateUser.do" style="color: black; font-size: 10px;">정보수정&nbsp;</a></li>
								<li><a href="${context}/work/cart/retrieveCartList.do" style="color: black; font-size: 10px;">장바구니&nbsp;</a></li>
								<li><a href="${context}/work/sell/retrieveBuyList.do" style="color: black; font-size: 10px;">구매내역&nbsp;</a></li>
								<li><a href="${context}/work/qna/retrieveQnaList.do" style="color: black; font-size: 10px;">문의내역&nbsp;</a></li>
								<li><a href="${context}/work/reserve/retrieveReserveList.do" style="color: black; font-size: 10px;">예약내역&nbsp;</a></li>
								<li><a href="${context}/work/event/createEvent.do" style="color: black; font-size: 10px;">행사신청&nbsp;</a></li>
							</ul>
						</li>
					</c:if>
					<c:if test="${sessionScope.id != null && sessionScope.grade == 'M'}">
						<li><a href="#">관리페이지</a>
							<ul class="submenu">
								<li><a href="http://192.168.0.59:8000/gaebalin" style="color: black; font-size: 10px;">크롤링 페이지&nbsp;</a></li>
								<li><a href="javascript:void(window.open('http://192.168.0.59:5050', '_blank','width=480, height=600'))"
								 style="color: black; font-size: 10px;">딥러닝&nbsp;</a></li>
								<li><a href="javascript:void(window.open('http://192.168.0.59:6060', '_blank','width=480, height=600'))"
								 style="color: black; font-size: 10px;">캣독&nbsp;</a></li>
								<li><a href="${context}/work/product/retrieveProductListForManage.do" style="color: black; font-size: 10px;">재고관리&nbsp;</a></li>
								<li><a href="${context}/work/qna/retrieveQnaListForManage.do" style="color: black; font-size: 10px;">문의관리&nbsp;</a></li>
								<li><a href="${context}/work/reserve/retrieveReserveListForManage.do" style="color: black; font-size: 10px;">예약관리&nbsp;</a></li>
								<li><a href="/chart/chartdata.jsp" style="color: black; font-size: 10px;">월간판매량&nbsp;</a></li>
							</ul>
						</li>
					</c:if>
					</li>
					<li>
						<c:if test="${sessionScope.id == null}">
							<a href="${context}/work/user/goLogin.do"><strong>LOGIN</strong></a>
						</c:if>
						<c:if test="${sessionScope.id != null}">
							<a href="${context}/work/user/logout.do"><strong>LOGOUT</strong></a>
						</c:if>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>