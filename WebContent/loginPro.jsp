
<%@page import="cs.good.dao.SignUpDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	SignUpDao dao = new SignUpDao();
	int i = dao.checkUser(id, pwd);
	
	if(i==1){
		session.setAttribute("id", id);
		response.sendRedirect("main.jsp");
	}else
		out.println("유효한사용자가 아닙니다.");
%>
