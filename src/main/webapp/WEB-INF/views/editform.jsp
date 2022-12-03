<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.spring.board.BoardDAO, com.spring.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>



<h1>Edit Form</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>카테고리</td><td><form:input type="text" path="category" name="category"/></td></tr>
		<tr><td>제목</td><td><form:input type="text" path="title" name="title"/></td></tr>
		<tr><td>글쓴이</td><td><form:input type="text" path="writer" name="writer"/></td></tr>
		<tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content" name="content"></form:textarea></td></tr>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>