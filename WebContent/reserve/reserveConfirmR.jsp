<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="reserveConfirmR.jsp">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>예약 확인</title>

	<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${context}/css/bootstrap-theme.css" rel="stylesheet">
	<link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="${context}/css/plugins/dataTables.bootstrap.css" rel="stylesheet">

    <link href="${context}/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script src="${context}/js/bootstrap.min.js"></script>
	<script src="${context}/js/common.js"></script>
    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>

    <script src="${context}/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${context}/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <script src="${context}/js/sb-admin-2.js"></script>

    <script>
	var existFolder = '';
	var imageFolder = '';
	var path = '';

    $(document).ready(function() {
//         $('#dataTables-example').dataTable();

    });
	
    function fn_reserveList(){
    	location.href = "${context}/work/reserve/retrieveReserveList.do";
    }

    function fn_review(paramEventNo){
    	location.href = "${context}/work/event/retrieveEvent.do?eventNo=" + paramEventNo;
    }

    </script>
</head>
<body>
<jsp:include page="/common/top.jsp"></jsp:include>
	<div class="container">
		<div class="row" style="margin-bottom: 10%;">
			<div class="col-md-12">
				<div class="offer offer-success">
					<div class="shape">
						<div class="shape-text">
							Thanks
						</div>
					</div>
					<div class="offer-content">
					<br><br><br>
						<h1 align="center" style="font-family: inherit;">
							결제가 완료되었습니다.
						</h1>
						<br><br><br>
						<h2 align="center" style="font-family: cursive;">
							예약내역에서 정보를 확인하실 수 있습니다.
							<br><br> 감사합니다.
						</h2>
					</div>
					<br><br><br><br>
					<div class="col-md-2 col-md-offset-4">
						<button type="button" class="btn btn-info btn-lg"  style="float:right;" onclick="fn_reserveList()"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;구매내역 보러가기</button>
					</div>
					<div class="col-md-2">
						<button type="button" class="btn btn-warning btn-lg"  style="float:right;" onclick="fn_review('${eventNo}')"><span class="glyphicon glyphicon-pencil"></span>&nbsp;후기 작성</button>
					</div>
					<br><br><br><br><br>
				</div>

			</div>
			<!-- /.col-lg-12 -->

		</div>
	</div>
<jsp:include page="/common/foot.jsp"></jsp:include>
</body>
</html>


