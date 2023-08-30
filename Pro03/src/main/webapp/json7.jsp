<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(function(){
	$("#checkJson").click(function(){
		$.ajax({
		type:"post",
		async:false,
		url:"http://localhost:8080/Pro03/jsonSevlet3",
		success:function(data,textStatus){
			var jsonInfo = JSON.parse(data);
			var memberInfo="회원 정보<br>";
			for (var i in jsonInfo.members){
				memberInfo += "==========<br>"
				memberInfo += "이름: " +jsonInfo.members[i].name + "<br>";
				memberInfo += "나이: " +jsonInfo.members[i].age + "<br>";
				memberInfo += "성별: " +jsonInfo.members[i].gender + "<br>";
				memberInfo += "별명: " +jsonInfo.members[i].nickname + "<br><br><br>";
			}
			var booksInfo = "<br><br><br>도서정보<br>";
			for (var i in jsonInfo.books){
				booksInfo += "==========<br>"
				booksInfo += "제목: " +jsonInfo.books[i].title + "<br>";
				booksInfo += "저자: " +jsonInfo.books[i].writer + "<br>";
				booksInfo += "가격: " +jsonInfo.books[i].price + "<br>";
				booksInfo += "장르: " +jsonInfo.books[i].genre + "<br>";
			    imageURL = jsonInfo.books[i].image;
			    booksInfo += "<img src =" + imageURL + ">" + "<br><br><br>";
			}
			$("#output").html(memberInfo + "<br>" + booksInfo);
		},
		error:function(data,textStatus){
			alert("에러가 발생했습니다.");
		}
	});
});
});
</script>
</head>
<body>
<a id ="checkJson" style="cursor:pointer">데이터 수신하기</a><br><br>
<div id ="output"></div>
</body>
</html>