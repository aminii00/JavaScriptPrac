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
		  var jsonStr = '{"age":[22,33,44]}'; // -> json객체 배열 0x10
		  var jsonInfo = JSON.parse(jsonStr);  //parse:JSON 문자열을 JavaScript 객체로 변환 ->0x100
		  var output = "회원나이<br>";
		  output += "========<br>";
		  for(var i in jsonInfo.age){
			  output += jsonInfo.age[i]+"<br>";
		  }
		  $("#output").html(output);
	  })
  })
</script>
</head>
<body>
<a id ="checkJson" style="cursor:pointer">출력</a><br><br>
<div id ="output"></div>
</body>
</html>