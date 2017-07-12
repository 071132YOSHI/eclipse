<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- 1:まずタグを入れる -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>

.kore{

background-color:red;

}

</style>


</head>
<body>


<!-- 2:変数にセットする,これが重要！！ -->
ここ２です↓<br>

<c:set var="msg" value="こんにちは" scope="session"/>
<c:set var="one" value="1" />
${msg}
<br>

${sessionScope.msg}
<br>
${session.getAttribute("msg")}


<br>

<!-- 3:変数を出力する -->
ここ３です↓
  <c:out value="${msg}" />

  <br>

<!-- 4:ifの使い方、elseがない -->
  <c:if test="${msg != ''}">値がある</c:if>
  <c:if test="${msg == ''}">値がない</c:if>

  <br>


<!-- 5;スイッチっぽいやり方 -->
  <c:choose>
    <c:when test="${locale == 'ja'}">こんにちは</c:when>
    <c:when test="${locale == 'it'}">Ciao</c:when>
    <c:when test="${locale == 'fr'}">Bonjour</c:when>
    <c:otherwise>Hello</c:otherwise>
  </c:choose>

  <br>

<!-- ６：繰り返しの書き方 -->

<!--  指定回数分の繰り返し-->
  <c:forEach var="i" begin="1" end="5" step="1">
    <h${i}>こんにちは！</h${i}>
  </c:forEach>

<!-- 重要：EL式の自由な書き方,これを使って自由にHTMLに挿入する-->

<h${one}> おれは${one}です。<h${one}>

<!-- 条件式を要素にいれるやりかた,要素にいれたい時は""はつける -->
<br><br>
<div class="<c:if test="${msg != ''}">kore</c:if>">

iro変わってたらおｋ

</div>


<!-- セッションとかの扱い -->




</body>
</html>