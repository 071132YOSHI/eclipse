<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- インポーファイルの書き方 -->
<%@ page import="java.util.*"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>

	<%
		//１、ＨＴＭＬ出力のやり方,outは暗黙オブジェクト
		out.println("暗黙オブジェクトrequestの使用例です。");
		out.println("<BR><BR>");

		//２、繰り返し文

		String[] strAry = { "a", "i" };

		for (int i = 0; i < strAry.length; i++) {
			out.print(strAry[i] + "<BR>");
		}

		//3,if文"WebContent/jsp/jsp.txt"

		int a = 1;
		if (a == 1)
			out.println("<br>ok");

		//４、重要！！！スコープへの変数代入

		//セッションに入れる。暗黙オブジェクトより宣言なしで使える。

		session.setAttribute("name", "hello");

		out.println((String) session.getAttribute("name"));

		//リクエストに入れる。

		request.setAttribute("age", "22");

		out.println((String) request.getAttribute("age"));

		//enumuration の使い方・・スコープに入ってる変数出力できる

		
		//くそ重たい
		
	
		



	%>

</body>
</html>