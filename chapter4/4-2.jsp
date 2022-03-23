<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<%
			request.setCharacterEncoding("utf-8");
%>
	<% int kor = Integer.parseInt(request.getParameter("kor")); %><br>
	<% int eng = Integer.parseInt(request.getParameter("eng")); %><br>
	<% int math = Integer.parseInt(request.getParameter("math")); %><br>
	<% int total = kor + eng + math; %><br>
	<% float avg = (float)total/3; %><br>
	국어 : <%=kor %><br>
	영어 : <%=eng %><br>
	수학 : <%=math %><br>
	총점 : <%=total %><br>
	평균 : <%=avg %>
	</body>
</html>