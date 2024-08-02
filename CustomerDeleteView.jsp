<!-- All Rights Reserved, Copyright(c) Fujitsu Learning Media Limited -->
<%-- pageディレクティブの設定 --%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%-- taglibディレクティブで、使用するタグライブラリを宣言 --%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>得意先削除</title>
<link rel="stylesheet" href="css/stylesRegist.css">
</head>
<body>
	<div class="container style="text-align: center">
		<h2>得意先削除</h2>

		<div style="text-align: center; color: red; font-weight: bold;">
			<%-- エラーメッセージがある場合、出力 --%>
			<c:out value="${requestScope.errorMessage}" />
			<c:forEach var="message" items="${requestScope.errorMessageList}">
				
				<c:out value="${message}" />
				<br>
			</c:forEach>
		</div>
		<div style="text-align: right">
			<form action="/jsys/jsysFC" method="post">
				<button class="button1" type="submit" name="buttonId" value="200_00_01">メニュー画面へ戻る</button>
				<br>
			</form>
		</div>
		<div class="search" style="text-align: center">
			<form action="/jsys/jsysFC" method="post">
				得意先コード<input class ="error"  type= "text" placeholder=KAから始まる英数字6桁 maxlength="6" name="custCode"
					value="<c:out value="${ param.custCode }" />"><br>
				<button class="button1" type="submit" name="buttonId" value="203_01_01">削除</button>
				<br>
			</form>
		</div>
		<br>
	</div>
	</body>
</html>