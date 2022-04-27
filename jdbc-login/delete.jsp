<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
<%
// JDBC DRIVER 등록
	Class.forName("org.mariadb.jdbc.Driver");
	
// 연결 객체 생성
	String url = "jdbc:mariadb://localhost:3306/jhs7735db";
	String user = "jhs7735";
	String passwd = "1111";
	Connection con = DriverManager.getConnection(url, user, passwd);
	
// SQL문 실행 준비
	String sql = "DELETE FROM LOGIN WHERE ID=?";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("id"));
	
// SQL문 실행	
	int i = pstmt.executeUpdate();
	
// 객체 해제
	pstmt.close();
	con.close();
%>

<script>
	let ans = alert("삭제되었습니다.");
	if (!ans){
		location.href = 'list.jsp';
	}
</script>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
</head>
<body>

</body>
</html>