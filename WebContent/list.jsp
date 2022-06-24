<%--사용자목록 리스트 --%>
<%@page import="cs.good.dto.SignUpDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cs.good.dao.SignUpDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	SignUpDao dao = new SignUpDao();
	ArrayList<SignUpDto> dtos = dao.list();
	pageContext.setAttribute("dtos", dtos);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>사용자 목록</title>
</head>
<body>
<h1>사용자 목록</h1>
<table class="table table-striped">
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>주소</th>
		<th>전화번호</th>
	</tr>
	<c:forEach var="dto" items="${dtos}">
		<tr>
		<td><a href="updateForm.jsp?id=${dto.id}">${dto.id}</a></td>
			<td>${dto.pwd}</td>
			<td>${dto.name}</td>
			<td>${dto.adress}</td>
			<td>${dto.phone}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>