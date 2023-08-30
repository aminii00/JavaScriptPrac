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
		  var _jsonInfo = '{"name":"박지성", "age":25, "gender":"남자", "nickname":"날센돌이"}';
	      $.ajax({
	    	  type:"post",
	    	  async:false,
	    	  url:"http://localhost:8080/Pro03/jsonSevlet1",
	    	  data :{jsonInfo:_jsonInfo},
	    	  success:function(data,textStatus){
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
<a id ="checkJson" style="cursor:pointer">전송</a><br><br>
<div id ="output"></div>
</body>
</html>