<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="java.util.Enumeration"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
out.println("ここからセッションです<br>");
session.setAttribute("KEY01","DATA01");
session.setAttribute("KEY02","DATA02");
session.setAttribute("KEY03","DATA03");

//セッション情報すべて見れるやり方

Enumeration e = session.getAttributeNames();
while(e.hasMoreElements()) {
    String key = (String)e.nextElement();
    out.println( key + "：" + session.getAttribute(key) + "<br>");
  }
//１画面時のクエリ情報が見えてる。forwardしたら本当にrequest情報が見える。
//とりあえず今のところはセッションキーはget1,2,...としていく。
out.println("<br>ここからがリクエストです<br>");
out.println("リクエストが見えてるか:"+request.getAttribute("get2"));

%>







</body>
</html>