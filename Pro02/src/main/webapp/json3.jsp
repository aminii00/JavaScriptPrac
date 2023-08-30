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
		 var jsonStr = '{"name":"박지성", "age":25, "gender":"남자", "nickname":"날센돌이"}';
		 var jsonObj = JSON.parse(jsonStr);
		 var output = "회원정보<br>";
		 output += "=============<br>"
		 output += "이름 : "+ jsonObj.name + "<br>";
		 output += "나이 : "+ jsonObj.age + "<br>";
		 output += "성별 : "+ jsonObj.gender + "<br>";
		 output += "별명 : "+ jsonObj.nickname + "<br>";
		 $("#output").html(output);
	 });
 });
</script>
</head>
<body>
<a id ="checkJson" style="cursor:pointer">출력</a><br><br>
<div id ="output"></div>
</body>
</html>