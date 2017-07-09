<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

session.setAttribute("sex","man");



%>
リクエストここにでます：${session.getAttribute("unk")}
${1+1}

<!--１、とりあえず次ページへの飛ばし方 -->



<p><a href="/Rensyu_web/Put2">サーブレットへのリンク</a>
<p><a href="/Rensyu_web/jstl_matome.jsp">jspへのリンク</a>


<!--2、送り方の種類 -->

<p><a href="/Rensyu_web/Put2" >名前入ってますか？</a>
<br>

<br>

<!-- フォームはサブミットボタンで送信する,nameに対してバリューを代入しまくるだけ -->
<form action="/Rensyu_web/Put2" method="post">
<input type="text" name="name" size="40">
<!--  <input type="hidden" name="sex" value="man">-->

<input type="submit" name="age" value= "30"  >
</form>






</body>
</html>