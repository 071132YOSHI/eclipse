<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


1,テーブル

<br>リファレンスをこうやって作っていく。
<br>

<table>
  <tr>
    <td>りんご</td>
    <td>甘酸っぱい</td>
    <td>おおむね赤</td>
  </tr>
  <tr>
    <td>なつみかん</td>
    <td>かなり酸っぱいと思う</td>
    <td>たいてい黄色</td>
  </tr>
</table>

<br>
2,リンク

<a href="mailto:info@htmq.com">メール</a><br>
<br>画像でもいけます
<a href="../index.htm"><img src="img/img001.gif" border="0"></a><br>

3,画像の表示
<br>
widthとheightは漬けた方がいいらしい。

<img border="0" src="img/img001.gif" width="128" height="128" alt="イラスト1">

<br>

４、リスト
<br>
<br>

<ul style="list-style:none;">
<li>aaaaaa</li>
<li>bbbbbb</li>
<li>ccccccc</li>
</ul>


5,input







	<%
		//input属性のまとめ、これが一番やばい
	%>


	<form action="xxx.php" method="post">
		<label>メール（type="email"）:<input type="email" name="email"></label><input
			type="submit" value="送信">
	</form>

	<form action="xxx.php" method="post">
		<label>URL（type="url"）:<input type="url" name="url"></label><input
			type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>検索（type="search"）:<input type="search" name="search"></label><input
			type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>電話（type="telephone"）:<input type="tel" name="tel"></label><input
			type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>数値（type="number"）:<input type="number" name="number"></label><input
			type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>日付（type="date"）:<input type="date" name="date"></label><input
			type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>日時（type="datetime"）:<input type="datetime"
			name="datetime"></label><input type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>ローカル日時（type="datetime-local"）:<input
			type="datetime-local" name="datetime-local"></label><input
			type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>月（type="month"）:<input type="month" name="month"></label><input
			type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>週（type="week"）:<input type="week" name="week"></label><input
			type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>時間（type="time"）:<input type="time" name="time"></label><input
			type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>レンジ（type="range"）:<input type="range" name="range"></label><input
			type="submit" value="送信">
	</form>
	<form action="xxx.php" method="post">
		<label>色（type="color"）:<input type="color" name="color"></label><input
			type="submit" value="送信">
	</form>




	<%//結局submitでハッシュ送りたいならjavascriptでvalueを変更してからサブミットすればいい。 %>
<script type="text/javascript">
function sbmt(aert) {
document.form1.hid1.value = aert;

}
</script>


<form action="button.php" method="post" name="form1">
<input type="text" name="res" value="<?php print( $_POST['hid1'] ) ?>" />
<input type="hidden" name="hid1" value="" />
<input type="submit" name="sub1" value="これを修正" onClick="sbmt('sub1')" />
<input type="submit" name="sub2" value="これを修正" onClick="sbmt('sub2')" />
</form>



</body>
</html>