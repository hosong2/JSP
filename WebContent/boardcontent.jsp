<%@page import="cs.good.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cs.good.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style type="text/css">
		#wrap {
			width: 800px;
			margin: 0 auto 0 auto;
			padding-top: 50px;
		}

		#topForm{
			text-align :right;
		}

		#board, #pageForm, #searchForm{
			text-align :center;
		}
		
		#bList{
			text-align :center;
		}
		#trtr{
		height = 300;}
		

		#back {
    margin-left: 50%;
    margin-top: 1%;
		}
	</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
<form action="" method="post">
	<table id="bList" width="900" border="3" bordercolor="lightgray">
			<tr height="40">
				<td>제목</td>
				<td>내용</td>
				<td>작성자</td>
			</tr>
	<tr style="text-align:center;" id = "trtr" height="300">
 	<td>${dto.title}</td>
 	<td>${dto.content}</td>
 	<td>${dto.writer}</td>
 </tr>

		</table>
</form>
</div>
<button id="back" onclick="location.href='boardlist.jsp'">목록으로 돌아가기</button>	
 	

</body>
</html>