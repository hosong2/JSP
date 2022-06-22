<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>게시판</title>
	
	<style type="text/css">
		#title{
			height : 16;
			font-family :'돋움';
			font-size : 14;
			text-align :center;
		}
	</style>
	
</head>
<body>

	<br>
	<b><font size="6" color="gray">좋았다 게시판</font></b>
	<br>
	
	
	<input type="hidden" name="board_id" value="${sessionScope.sessionID}">
	<form action = "insert.da" method="post">
	<table width="700" border="3" bordercolor="lightgray" align="center">
		<tr>
			<td id="title">작성자</td>
			<td><input name="writer" type="text" size="70" maxlength="80" value=""/></td>
		</tr>
			<tr>
			<td id="title">
				제 목
			</td>
			<td>
				<input name="title" type="text" size="70" maxlength="80" value=""/>
			</td>		
		</tr>
		<tr>
			<td id="title">
				내 용
			</td>
			<td>
				<textarea name="content" cols="70" rows="20"></textarea>			
			</td>		
		</tr>
		<tr>
			<td id="title">
				파일첨부
			</td>
			<td>
				<input type="file" name="board_file" />
			</td>	
		</tr>

		<tr align="center" valign="middle">
			<td colspan="5">
				<input type="submit" value="등록" >		
				<button type="button" id="btnSignUp" class="btn btn-outline-dark" onclick="location.href='boardlisttest.jsp'">목록</button>
				<button type="button" id="btnSignUp" class="btn btn-outline-dark" onclick="location.href='boardlisttest.jsp'">작성취소</button>
			</td>
		</tr>
	</table>	
	</form>
	
</body>
</html>