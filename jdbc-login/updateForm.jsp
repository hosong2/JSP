<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
<%
	String id = request.getParameter("id");

//1. JDBC DRIVER 등록
	Class.forName("org.mariadb.jdbc.Driver");
	
	// 2. DB와 연결(Connection) 생성
	// 연결 문자열 생성
	String url = "jdbc:mariadb://localhost:3306/jhs7735db";
	String user = "jhs7735";
	String passwd = "1111";
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	// 3. DB에 연결
	String sql = "select * from login where id=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	
	// 4. 결과 셋에서 데이터 추출하기
	rs.next();
	String name = rs.getString("name");
	String pwd2 = rs.getString("pwd");
	
	rs.close();
	pstmt.close();
	con.close();
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
</head>
<body>
	<h2>사용자정보변경</h2>
	<form name="login" action="updatePro.jsp" method="post">
			아이디 : <input type="text" name="id" value="<%=id%>"><br>
			이름 : <input type="text" name="name"	value="<%=name%>">><br>
			암호 : <input type="password" name ="pwd"value="<%=pwd2%>">><br>
			<input type="submit" value="변경저장">
			<button type="button" onclick="location.href='delete.jsp'" value="삭제">삭제</button>
			<button type="button" onclick="location.href='list.jsp'" value="목록">사용자 입력</button>
	</form>
</body>
</html>