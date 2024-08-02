<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>メインメニュー</title>
</head>
<body>
	<div style="text-align: center">
		<h2>メインメニュー</h2>
		<div style="text-align: center">
			<form action="/jsys/jsysFC" method="post">
				<button type="submit" >受注管理</button><br>
				<button type="submit" name="buttonId" value="200_00_01">得意先管理</button><br>
				<button type="submit" >得意先別集計</button><br>
			</form>
		</div>
	</div>
</body>
</html>