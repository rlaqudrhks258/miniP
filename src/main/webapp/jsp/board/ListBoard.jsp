<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


</head>
					<style>
					/* UI Object */
					.tbl_type,.tbl_type th,.tbl_type td{border:0}
					.tbl_type a{color:#383838;text-decoration:none}
					.tbl_type{width:100%;border-bottom:1px solid #999;color:#666;font-size:12px;table-layout:fixed}
					.tbl_type caption,.tbl_type .frm label{display:none}
					.tbl_type th{padding:5px 0 4px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:18px;vertical-align:top}
					.tbl_type td{padding:8px 0 5px;border-bottom:solid 1px #d2d2d2;text-align:center}
					.tbl_type .frm{padding:0;text-align:center}
					.tbl_type .frm input{margin:0}
					.tbl_type .num,.tbl_type .date,.tbl_type .hit{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
					.tbl_type .title{text-align:left}
					.tbl_type .title .pic,.tbl_type .title .new{margin:0 0 2px;vertical-align:middle}
					.tbl_type tr.reply .title a{padding-left:12px;background:url(img/ic_reply.gif) 0 1px no-repeat}
					.tbl_type tr.reply td a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
					/* //UI Object */
.col-md-1{
margin : auto;
width : 507px;
height : 100px;
text-align : center;
font-size : 48px;
}
.col{
text-align : center;
}

					
					</style>
<body>
<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-1">자유게시판</div>
  <div class="col-md-1"></div>
  </div>
  
  <div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
<!-- UI Object -->
	<table cellspacing="0" border="1" summary="게시판의 글제목 리스트" class="tbl_type">
	<caption>게시판 리스트</caption>
	<colgroup>
	<col width="30"><col width="80"><col> 
	<col width="115"><col width="85"><col width="60">
	</colgroup>
	<thead> 
	<tr>
	<th class = 'col' scope="col">&nbsp;</th>
	<th class = 'col' scope="col"></th>
	<th class = 'col' scope="col">제목</th>
	<th class = 'col' scope="col">글쓴이</th>
	<th class = 'col' scope="col">날짜</th>
	<th class = 'col' scope="col">조회수</th>
	</tr>
	</thead>
	
	<c:forEach var = "b" items = "${board}">
	<tbody>
	<tr>
	
	
	<td class="frm"></td>
	<td class="num"> ${b.no}</td>
	<td class="title"><a href="#"> ${b.title}</a></td>
	<td><a href="#"> ${b.writer}</a></td>
	<td class="date"><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd" /></td>
	<td class="hit"> ${b.viewCnt}</td>
	</tr>
	</tbody>
	</c:forEach>
	
	</table>
</div>
  <div class="col-md-4"></div>
  </div>
  <form action = "" method = "post">
<a href = "<c:url value = '/jsp/board/WriteForm.jsp/>">글쓰기</a>
  </form>
  
	
	</body>
</html>