<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- 1:まずタグを入れる -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- 2:まず変数にセットする -->
<c:set var="msg" value="こんにちは" />
${msg}

<br>

<!-- 3:変数を出力する -->
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

<指定回数分の繰り返し>
  <c:forEach var="i" begin="1" end="5" step="1">
    <h${i}>こんにちは！</h${i}>
  </c:forEach>




</body>
</html>