<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社員一覧</title>
<style>
table {
	border-collapse: collapse; /* セルの境界線を重ねて単線にする */
}

th, td {
	border: 1px solid black; /* セルの境界線のスタイルを設定 */
	padding: 10px;
}
</style>
</head>
<body>
	<h1>社員一覧(MVC)</h1>

	<table border="1">
		<tr bgcolor="#cccccc">
			<th>ID</th>
			<th>名前</th>
			<th>姓</th>
			<th>年</th>
			<th>住所</th>
			<th>変更</th>
			<th>削除</th>
		</tr>

		<%-- shainBeanから社員情報を取得する --%>
<%
ArrayList<ShainBean> shainList = (ArrayList<ShainBean>)request.getAttribute("shainList");
%>

		<%
		for (ShainBean shainBean : shainList) {
		%>
		<tr>
			<td><%=shainBean.getId()%></td>
			<td><%=shainBean.getName()%></td>
			<td><%=shainBean.getSei()%></td>
			<td><%=shainBean.getNen()%></td>
			<td><%=shainBean.getAddress()%></td>
			<td>変更</td>
			<td>削除</td>
		</tr>
		<%
		}
		%>

	</table>
	<p></p>
	<!-- 「社員を登録する」ボタン -->
	<form action="ShainInsert">
		<input type="submit" value="社員を登録する">
	</form>
</body>
</html>