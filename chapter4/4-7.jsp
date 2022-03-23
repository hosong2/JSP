<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

사용가능언어 : <%
	String[] Language = request.getParameterValues("Language");
	
	for(String s : Language){
		out.println(s);
	}
	
%>
<br>
취미 : 
<%
	String[] hobby = request.getParameterValues("hobby");

	for(int i=0; i<hobby.length; i++){
	out.println(hobby[i]);
}
%>
</body>
</html>