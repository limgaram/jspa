<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="board.article.Article"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<Article> articles = (ArrayList<Article>) request.getAttribute("data");
	%>
	<div>list</div>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>
		<%
			for (int i = 0; i < articles.size(); i++) {
		%>
		<tr>
			<td><%=articles.get(i).getId()%></td>
			<td><%=articles.get(i).getTitle()%></td>
			<td><%=articles.get(i).getNickname()%></td>
			<td><%=articles.get(i).getRegDate()%></td>
			<td><%=articles.get(i).getHit()%></td>
		</tr>
		<%
			}
		%>

		<c:forEach var="i" begin="1" end="5">
			<div>hi</div>
		</c:forEach>
	</table>
</body>
</html>