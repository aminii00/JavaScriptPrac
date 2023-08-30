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
		 var jsonStr = '{"members":[{"name":"박지성", "age":25, "gender":"남자", "nickname":"날센돌이"}' 
		                  + ',{"name":"손흥민", "age":30, "gender":"남자", "nickname":"탱크"}] }';
		 var jsonInfo = JSON.parse(jsonStr);
		 var output = "회원정보<br>";
		 output += "=============<br>";
		 for(var i in jsonInfo.members){
		 output += "이름 : "+ jsonInfo.members[i].name + "<br>";
		 output += "나이 : "+ jsonInfo.members[i].age + "<br>";
		 output += "성별 : "+ jsonInfo.members[i].gender + "<br>";
		 output += "별명 : "+ jsonInfo.members[i].nickname + "<br><br><br>";
		 }
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