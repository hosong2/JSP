<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
<%
	request.setCharacterEncoding("UTF-8");	

	
	// 1.jdbc 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	
	// 2. 커넥션 얻기
	String url = "jdbc:mariadb://localhost:3306/jhs7735db";
	String user = "jhs7735";
	String passwd = "1111";
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	// 3. SQL 실행 준비
	//String sql = "insert into login(id, pwd) values('" + id + "', '" + passwd +"')";
	//Statement stmt = con.createStatement();
	String sql = "update login set name=?, pwd=? where id=?";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("name"));
	pstmt.setString(2, request.getParameter("pwd"));
	pstmt.setString(3, request.getParameter("id"));
	
	
	int i = pstmt.executeUpdate();
	

	
	//int i = set.executeUpdate(sql);
	
	// 5. 객체해제
	pstmt.close();
	con.close();

	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<script>
	let ans = alert("변경완료");
	if (!ans){
		location.href='list.jsp';
	}
	</script>
</body>
</html>