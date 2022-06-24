<%@page import="cs.good.dto.ProductDto"%>
<%@page import="cs.good.dao.ProductDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    margin-left: 190px;
    border-radius: 25px;
    width: 300px;
    height: 35px;
}

.searchbtn {
    position: absolute;
    border: none;
    outline: none;
    margin-left: 448px;
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
	margin: 8%;
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

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: inherit;
  margin-top: 0px auto;
  margin-left: 9%;
}

/* effect */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;	
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}


body {
    font-family: '맑은 고딕', verdana;
    padding: 0;
    margin: 0;
}

ul {
    padding: 0;
    margin: 0;
    list-style: none;
}

nav#nav {
    padding: 10px;
    text-align: right;
}

nav#nav ul li {
    display: inline-block;
    margin-left: 10px;
}

section#container {
    padding: 20px 0;
    border-top: 2px solid #eee;
    border-bottom: 2px solid #eee;
}

section#container::after {
    content: "";
    display: block;
    clear: both;
}




div#container_box {
    float: left;
    width: 100%;
    display: flex;
    align-content: flex-start;
    flex-direction: column;
    flex-wrap: wrap;
    margin-left: 300px;
}

#container ul li {
    text-align: center;
    margin-bottom: 10px;
    display: block;
    padding: 10px 0;
}

#imgs li {
    text-align: center;
    margin-right: 130px;
    float: left;
    display: block;
}

#imgs li:hover {
    border: 2px solid #eee;
}

#imgs li {
    width: 300px;
    height: 280px;
}

#container ul {
    text-align: center;
}

#category {
    display: flex;
    align-content: flex-start;
    flex-direction: column;
    flex-wrap: wrap;
    float: left;
    width: 150px;
}

#category li {
    margin: 5px;
    border: 2px solid #eee;
    width: 100px;
    height: 100px;
}

#category li:hover {
    background-color: #eee;
}

footer#footer {
    background: #f9f9f9;
    padding: 20px;
}

footer#footer ul li {
    display: inline-block;
    margin-right: 10px;
}
.kategorie_background ul {
    float: left;
    text-align: center;
    margin-left: 18%;
    font-size: 24px;
    font-weight: bold;
}

a:link {	
    color: rgb(126, 76, 105);
    text-decoration: none;
}

a:visited {
    color: rgb(126, 76, 105);
    text-decoration: none;
}

.list_body{
	width: 200px;
	height: 300px;
	margin-left: 150px;
	margin-top: 50px;
	margin-right: 50px;
	margin-bottom: 50px;

}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script language="JavaScript">
function changeIframe(url) {
    document.getElementById("main_frame").src = url;
}
$(document).ready(function () {
	$(".mySlideDiv").not(".active").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김
	
	setInterval(nextSlide, 4000); //4초(4000)마다 다음 슬라이드로 넘어감
});

//이전 슬라이드
function prevSlide() {
	$(".mySlideDiv").hide(); //모든 div 숨김
	var allSlide = $(".mySlideDiv"); //모든 div 객체를 변수에 저장
	var currentIndex = 0; //현재 나타난 슬라이드의 인덱스 변수
	
	//반복문으로 현재 active클래스를 가진 div를 찾아 index 저장
	$(".mySlideDiv").each(function(index,item){ 
		if($(this).hasClass("active")) {
			currentIndex = index;
		}
        
	});
	
	//새롭게 나타낼 div의 index
	var newIndex = 0;
    
	if(currentIndex <= 0) {
		//현재 슬라이드의 index가 0인 경우 마지막 슬라이드로 보냄(무한반복)
		newIndex = allSlide.length-1;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 뒤로 간 index 지정
		newIndex = currentIndex-1;
	}

	//모든 div에서 active 클래스 제거
	$(".mySlideDiv").removeClass("active");
    
	//새롭게 지정한 index번째 슬라이드에 active 클래스 부여 후 show()
	$(".mySlideDiv").eq(newIndex).addClass("active");
	$(".mySlideDiv").eq(newIndex).show();

}

//다음 슬라이드
function nextSlide() {
	$(".mySlideDiv").hide();
	var allSlide = $(".mySlideDiv");
	var currentIndex = 0;
	
	$(".mySlideDiv").each(function(index,item){
		if($(this).hasClass("active")) {
			currentIndex = index;
		}
        
	});
	
	var newIndex = 0;
	
	if(currentIndex >= allSlide.length-1) {
		//현재 슬라이드 index가 마지막 순서면 0번째로 보냄(무한반복)
		newIndex = 0;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
		newIndex = currentIndex+1;
	}

	$(".mySlideDiv").removeClass("active");
	$(".mySlideDiv").eq(newIndex).addClass("active");
	$(".mySlideDiv").eq(newIndex).show();
	
}
</script>
<%	String id = (String)session.getAttribute("id"); %>
<body>
<div>
	<div id="title_background" >
		<a href="main.jsp">
		<img src="./images/banner.jpg">
		</a>
		<span id="title_Login">
		<%
	if(id!=null){
		%>
		<%=id %> 님
		<a id="login" href="logout.jsp">로그아웃</a>
		<%
	}else{
		%>
		<a id="login" href="login.jsp">로그인</a>
<%} %> <a id="Login" href="signUp.jsp">회원가입</a><a id="Login">장바구니</a>
		</span>
		</div>
		<div>
        <section id="container">
       		<div class="kategorie_background">
					<ul>
                    	<a href="top.jsp" target="iframe">상 의</a></ul>
                	<ul>
                   		 <a href="pants.jsp" target="iframe">하 의</a></ul>
                	<ul>
                   		 <a href="shoes.jsp" target="iframe">신 발</a></ul>
                   	<div>
                	<from id="searchForm" method="POST">
                	<%-- 검색 --%>
						<input id="searchKeyword" placeholder=" 찾으시는 물건을 검색해주세요">
						<button  class="searchbtn">
						<i class="tiny material-icons">search</i>
					</button>
					</from>
					</div>
            </div>
            
			<div class="slideshow-container">
			
			 	<div class="mySlideDiv fade">
       				  <img src="./images/pantsban2.jpg"> 
     			</div>

    			 <div class="mySlideDiv fade active">
        			<img src="./images/topban11.jpg"> 
     			</div>
            
     			<div class="mySlideDiv fade">
        			 <img src="./images/pantsban1.jpg"> 
     			</div>		        
			</div >
		<div id="container_box">
         <iframe src="homecon.jsp" name="iframe" frameborder="0" scrolling="yes" width="1800px" height="600px" id="main_iframe" ></iframe></div>
		</div>
    </section>
</div>
    <footer id="footer">
        <div id="footer_box">
            <ul>
                <li>사이트 소개</li>
                <li><a href="boardlist.jsp">Q&A 게시판</a></li>
            </ul>
        </div>
    </footer>

    </div>
</body>
</html>