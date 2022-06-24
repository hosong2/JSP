<%@page import="cs.good.dto.ProductDto"%>
<%@page import="cs.good.dao.ProductDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>좋았다 쇼핑몰</title>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<style>
#title_background {
    margin-left: 25%;
    margin-bottom: 10px;
}

#title_banner {
    margin-left: 25%;
    }

#searchForm {
    position: absolute;
    border: 20px;
    border-radius: 25px;
   	}

#searchKeyword {
    position: absolute;
    border: 0px;
    background-color: #EEEEEE;
    margin-left: 220px;
    border-radius: 25px;
    width: 300px;
    height: 35px;
}

.searchbtn {
    position: absolute;
    border: none;
    outline: none;
    margin-left: 478px;
    margin-top: 6px;
}

#search {
    align-items: center;
    height: 100px;
    width: 400px;
    border: 1px solid #1b5ac2;
    background: #ffffff;
}

#searchbtn {
	margin-top: 25px;
    width: 50px;
    height: 100%;
    border: 0px;
    background: 1b5ac2;
    outline: none;
    float: right;
    color: #070505;
}
#title_Login{
	margin: 10%;
}

#Login {
    font-size: 20px;
    font-weight: bold;
    text-decoration: none;
    margin-left: 10px;
    margin-right: 5px;
}

.kategorie_background {
    width: 100%;
    height: 30px;
    margin-top: 0px;
    margin-bottom: 40px;
}

.Kgbtn {
    background-color: white;
    border: 1px;
    width: 200px;
    height: 40px;
    font-size: 24px;
    font-weight: bold;
}

a:link{
	
	text-decoration: none;
}

a:visited{
	text-decoration: none;
}

a:hover{

	text-decoration: none;
}

a:acative{

	text-decoration: none;
}

.main-img{
	max-width : 400px;
	height: auto;
	float: left;
	padding: 25px 150px;
	margin: auto;
}
#mainImage{
	width: 200px;
}

.main-company{
	width: 400px;
	height: auto;
	padding: 25px;
	padding-right: 600px;
	margin:auto;
	
	line-height: 36px;
}


.main-company-name{
	font-size: 30px;
	font-weight: 500;
}
.main-company-name div{
	line-height: 36px;
}

.footer_box{
	padding-top: auto;
}
footer#footer {
    background: #f9f9f9;
    padding: 20px;
}

footer#footer ul li {
    display: inline-block;
    margin-right: 10px;
}
</style>
<form action="" method="post">
<div>		
		<div class="main-img">
			<img  id="mainImage"src="${dto.image}"/>
		</div>
		
		<!--  main text -->
		<div class="main-company">
	
		<!-- 상품명 -->
			<div>
			<span class="main-company-name">상품명 : </span>
				<span class="main-company-name">${dto.itemname}</span>
			</div>
		
		<!-- 제조사 -->
			<div>
				<span class="main-company-product">제조사 : </span>
				<span class="main-company-product">${dto.companyname}</span>
			</div>
		
		<!-- 가격 -->
			<div>
			<span class="main-company-price">가격 : </span>
				<span class="main-company-price"><fmt:formatNumber value="${dto.price}" pattern="#,###원"/></span>
			</div>
		
		<!-- 배송정보 -->
			<div>
				<span class="main-company-pardate">배송 정보 : </span>
				<span class="main-company-parcel">일반 배송</span>
			</div>
		
		<!-- 상품 구매 버튼 -->
			<div>
				<button type="button" class=main-company-price-btn>장바구니</button>
				<span><a href="homecon.jsp">돌아가기</a></span>
			</div>
	</div>
</div>
</form>


<body>

</body>
</html>