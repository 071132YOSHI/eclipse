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
//生成されていないオブジェクトはそもそもエラーでる。
//String number = session.getAttribute("number");



%>
リクエストここにでます：${number}
${1+1}

<!--１、とりあえず次ページへの飛ばし方 -->



<p><a href="/Rensyu_web/Put2">サーブレットへのリンク</a>
<p><a href="/Rensyu_web/jstl_matome.jsp">jspへのリンク</a>


<!--2、送り方の種類 -->

<%//一つ目、ＧＥＴで渡す、クエリで何個でも渡せるし、
  //?name=ok&id=oioiとかって書く

%>
<p><a href="/Rensyu_web/Put2?name=ok" >名前入ってますか？</a>
<br>

<br>

<%
//二つ目、ＰＯＳＴで渡す、submit一つだけでいいならこの書き方でいい。formでサブミット囲むだけ


%>>

<!-- フォームはサブミットボタンで送信する,nameに対してバリューを代入しまくるだけ -->
<form action="/Rensyu_web/Put2" method="post">
<input type="text" name="name" size="40">
<!--  <input type="hidden" name="sex" value="man">-->

<input type="submit" name="age" value= "30"  >
</form>

<%  
//３つめ

%>






</body>
</html>