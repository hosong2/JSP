<%@page import="cs.good.dto.ProductDto"%>
<%@page import="cs.good.dao.ProductDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	ProductDao dao = new ProductDao();
	ArrayList<ProductDto> dtos = dao.list();
	pageContext.setAttribute("dtos", dtos);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좋았다 쇼핑몰</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
    #imgs li {
        text-align: center;
        margin-right: 130px;
        display: inline-block;
        margin-bottom: 40px;
        padding-bottom: 30px;
        flex-wrap: wrap;
    }
    
    #imgs li:hover {
        border: 1px solid #eee;
    }
    
    #imgs li {
        width: 300px;
        height: 280px;
        margin-bottom: 30px;
    }
    
    img {
        max-width: 100%;
    }
    
    a:link {
    text-decoration: none;
	}

	a:visited {
    text-decoration: none;
	} 
</style>

<body>
    <div id="container_box">
        <ul id="imgs">
        	<c:forEach items="${dtos}" var="dto">
        		<a href="homecon.dh?id=${dto.id}">
        		<li><img src="${dto.image}"></img></a>
        		<div style="font-size: 12px; text-align:left;">${dto.companyname}</div>
        		<div style="font-size: 20px; font-weight:bold; text-align:left;">${dto.itemname}</div>
        		<div style="font-size: 20px; font-weight:bold; text-align:right;"><fmt:formatNumber value="${dto.price}" pattern="#,###원"/></div>
        		</li>       
        		
        	</c:forEach>	
           
        </ul>
    </div>

</body>
</html>