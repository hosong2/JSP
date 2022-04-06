<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
<%
	request.setCharacterEncoding("UTF-8");	
	String id = request.getParameter("id");
	String passwd = request.getParameter("pwd");
	
	// 1.jdbc 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	
	// 2. 커넥션 얻기
	String url = "jdbc:mariadb://localhost:3306/jhs7735db";
	String user = "jhs7735";
	String pwd = "1111";
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	// 3. SQL 실행 준비
	//String sql = "insert into login(id, pwd) values('" + id + "', '" + passwd +"')";
	//Statement stmt = con.createStatement();
	String sql = "insert into login(id, pwd) values(?, ?)";
	
	
	// 4. SQL 실행
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, passwd);
	pstmt.executeUpdate();
	
	//int i = set.executeUpdate(sql);
	
	// 5. 객체해제
	pstmt.close();
	con.close();
	
	response.sendRedirect("dbcon-login.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	당신의 아이디는 <%=id %>이고<br>
	암호는는 <%=pwd %>입니다.
</body>
</html>