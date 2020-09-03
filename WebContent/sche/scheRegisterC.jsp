<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0; user-scalable=yes; width=device-width;height=device-height" />
		<meta name="description" content="scheRegisterC.jsp">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>공지사항 등록</title>
	<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${context}/css/bootstrap-theme.css" rel="stylesheet">
	<link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="${context}/css/plugins/social-buttons.css" rel="stylesheet">
	<link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet" >
    <link href="${context}/css/process.css" rel="stylesheet">

	<script src="${context}/js/jquery-1.9.1.js"></script>
    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>
	<script src="${context}/js/common.js"></script>
    <script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
	<script type="text/javascript">

	
	function fn_save(){
		if(!fn_validation()){
			return;
		}else{
			var scheContents = String($("#scheContents").val());

			scheContents = scheContents.replace(/\n/gi, "<br/>");

			$("#scheContents").val(scheContents);

	 		$("#createSche").submit();
		}
	}
</script>
<style type="text/css">
</style>
</head>
<body>
<jsp:include page="../common/top.jsp"></jsp:include>
	<div class="container" style="margin-top: 2%; margin-bottom: 10%;">
	<div class="page-header">
		<h1>공지사항</h1>
	</div>
	<form id="createSche" method="post" action="${context}/work/sche/createSche.do" role="form">
		<div class="form-horizontal">
			<div class="form-group">
				<label for="scheTitle" class="control-label col-md-1"><b>제목</b></label>
				<div class="col-md-11">
					<input class="form-control" type="text" name="scheTitle" id="scheTitle" required="required" maxlength="50" autofocus="autofocus" placeholder="제목을 입력해주세요"/>
				</div>
			</div>
			<div class="form-group">
			
			</div>
			<div class="form-group">
				<label for="scheContents" class="control-label col-md-1"><b>본문</b></label>
				<div class="col-md-11">
					<textarea class="form-control" name="scheContents" id="scheContents" cols="10" rows="15" required="required" placeholder="본문을 입력해주세요"></textarea>
				</div>
			</div>
		</div>
		<div class="col-md-offset-1 col-md-2">
			<button type="button" class="btn btn-default" onclick="fn_back()">취소</button>
		</div>
		<div class="col-md-offset-8 col-md-1">
			<button class="btn btn-primary" type="button" name="btnSubmit" id="btnSubmit" onclick="fn_save()">등록하기</button>
		</div>
	</form>
	</div>
<jsp:include page="../common/foot.jsp"></jsp:include>
</body>
</html>