<%@page import="cs.good.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cs.good.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	BoardDao dao = new BoardDao();
	ArrayList<BoardDto> dtos = dao.list();
	pageContext.setAttribute("dtos", dtos);
%>      
<html>
<head>
	<title>전체 게시글</title>
	
	<style type="text/css">
		#wrap {
			width: 800px;
			margin: 0 auto 0 auto;
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
	</style>
	
	<script type="text/javascript">
		function writeForm(){
			location.href="BoardWriteForm.bo";
		}
	</script>
	
</head>
<body>	
<b><font size="6" color="gray">좋았다 게시판</font></b>

<div id="wrap">

	<br>
	<div id="topForm">
			<button onclick="location.href='boardwrite.jsp'">글쓰기</button>
			<button onclick="location.href='main.jsp'">돌아가기</button>
	</div>
	
	<br>
	<div id="board">
		<table id="bList" width="900" border="3" bordercolor="lightgray">
			<tr heigh="40">
				<td>제목</td>
				<td>작성자</td>
			</tr>
		<c:forEach var="dto" items="${dtos}">
	<tr style="text-align:center;">
 	<td><a href="view.da?title=${dto.title}">${dto.title}</a></td>
 	<td>${dto.writer}</td>
 </tr>
 </c:forEach>
		</table>
	</div>
	<br>
	<div id="pageForm">
		<c:if test="${startPage != 1}">
			<a>[ 이전 ]</a>
		</c:if>
		<c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
			<c:if test="${pageNum == spage}">
				${pageNum}&nbsp;
			</c:if>
			<c:if test="${pageNum != spage}">
				${pageNum}&nbsp;
			</c:if>
		</c:forEach>
		<c:if test="${endPage != maxPage }">
			<a>[ 다음 ]</a>
		</c:if>
	</div>
	<br>
	<div id="searchForm">
		<form>
			<select name="opt">
				<option value="0">제목</option>
				<option value="1">내용</option>
				<option value="2">제목+내용</option>
				<option value="3">작성자</option>
			</select>
			<input type="text" size="20" name="condition"/>&nbsp;
			<input type="submit" value="검색"/>
		</form>	
	</div>
</div>	

</body>
</html>