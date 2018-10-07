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

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script>
$(document).ready(function() {
    $('#summernote').summernote({
            height: 300,                 // set editor height
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
            focus: true                  // set focus to editable area after initializing summernote
    });
});

$(document).ready(function() {
	  $('#summernote').summernote();
	});




</script>
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
.title, .writer{
width : 507px;
height : 20px;
}
.forsn{
width : 500px;
height : 500px;


}

.col-md-1{
margin : auto;
width : 507px;
height : 100px;
text-align : center;
font-size : 48px;
}
.col-md-4{
text-align : center;
}

.note-editor.note-frame {
    border: 1px solid #a9a9a9;
    width: 500px;
    height: 500px;
}



</style>
</head>
<body>
<div class="col-md-1"></div>
  <div class="col-md-1" class = "writewrite">글쓰기</div>
  <div class="col-md-1"></div>
  
  <form action = "write.do" method = "POST">
<div class="row"></div>
  <div class="col-md-4"></div>
  <div class="col-md-4">
  
  <table cellspacing="0" border="1" summary="게시판의 글제목 리스트" class="tbl_type">
	<caption>게시판 리스트</caption>
	<colgroup>
	<col width="30"><col width="80"><col> 
	<col width="115"><col width="85"><col width="60">
	</colgroup>
	<thead> 
	<tr>
	<th class = 'col' scope="col">제목</th>
	<td><input type = "title" name = "title" placeholder ="제목을 입력하세요." class = "title"></td>
	</tr>
	
	<tr>
	<th class = 'col' scope="col">글쓴이</th>
	<td><input type = "text" name = "writer" placeholder ="작성자를 입력하세요." class = "writer"></td>
	
	</tr>
	
	<tr>
	
	<th class = 'col' scope="col">내용</th>
	<td class = "forsn">
	<textarea name="content" id="summernote" value="" class = "sn" ></textarea>
	</tr>

	
	</thead>
	
  
  </div>
  <div class="col-md-4"></div>
  <button>등록</button>

   
</form>
<a href = "<c:url value = '/board/ListBoard.do'/>">목록</a>


</body>
</html>