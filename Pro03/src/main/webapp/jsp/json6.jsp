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
		url:"http://localhost:8080/Pro03/jsonSevlet2",
		success:function(data,textStatus){
			var jsonInfo = JSON.parse(data);
			var memberInfo="회원 정보<br>";
			for (var i in jsonInfo.members){
				memberInfo += "==========<br>"
				memberInfo += "이름: " +jsonInfo.members[i].name + "<br>";
				memberInfo += "나이: " +jsonInfo.members[i].age + "<br>";
				memberInfo += "성별: " +jsonInfo.members[i].gender + "<br>";
				memberInfo += "별명: " +jsonInfo.members[i].nickname + "<br>";
			}
			$("#output").html(memberInfo);
		},
		error:function(data,textStatus){
			alert("에러가 발생했습니다.");
		},
		complete:function(data,textStatus){	
		}
	});
});
});
</script>
</head>
<body>
<a id ="checkJson" style="cursor:pointer">회원정보 수신하기</a><br><br>
<div id ="output"></div>
</body>
</html>