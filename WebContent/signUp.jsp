<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
</head>
<style>
/* 레이아웃 */

html {
    height: 100%;
}

body {
    margin: 0;
    height: 100%;
    background: #f5f6f7;
    font-family: Dotum, '돋움', Helvetica, sans-serif;
}

#header {
    padding-top: 62px;
    padding-bottom: 20px;
    text-align: center;
    font-style: italic;
}

#wrapper {
    position: relative;
    height: 100%;
}

#content {
    position: absolute;
    left: 50%;
    transform: translate(-50%);
    width: 460px;
}


/* 입력 */

h3 {
    margin: 19px 0 8px;
    font-size: 14px;
    font-weight: 700;
}

.box {
    display: block;
    width: 100%;
    height: 51px;
    border: solid 1px #dadada;
    padding: 10px 14px 10px 14px;
    box-sizing: border-box;
    border-radius: 20px;
    background: #fff;
    position: relative;
}

.int {
    display: block;
    position: relative;
    width: 100%;
    height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
}

input {
    font-family: Dotum, '돋움', Helvetica, sans-serif;
}

.box.int_id {
    padding-right: 110px;
}

.box.int_pass {
    padding-right: 40px;
}

.box.int_pass_check {
    padding-right: 40px;
}

#bir_wrap {
    display: table;
    width: 100%;
}

#bir_yy {
    display: table-cell;
    width: 147px;
}

#bir_mm {
    display: table-cell;
    width: 147px;
    vertical-align: middle;
}

#bir_dd {
    display: table-cell;
    width: 147px;
}

#bir_mm,
#bir_dd {
    padding-left: 10px;
}

select {
    width: 100%;
    height: 29px;
    font-size: 15px;
    background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
    background-size: 20px 8px;
    -webkit-appearance: none;
    display: inline-block;
    text-align: start;
    border: none;
    cursor: default;
    font-family: Dotum, '돋움', Helvetica, sans-serif;
}


/* 버튼 */

.btn_area {
    margin: 30px 0 91px;
}

#btnSubmit {
    width: 100%;
    padding: 21px 0 17px;
    border-radius: 5px;
    background-color: darkgray;
    cursor: pointer;
    font-size: 20px;
    font-weight: 400;
    font-family: Dotum, '돋움', Helvetica, sans-serif;
    border-color: white;
}
</style>
<body>
<!-- header -->
    <div id="header">
        <h1>회원가입</h1>
    </div>


    <!-- wrapper -->
    <div id="wrapper">

        <!-- content-->
        <div id="content">
        
						<form name="signUp" action="insert.do" method="post">
            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="id">아이디</label>
                </h3>
                <span class="box int_id">
                    <input type="text" id="id" class="int" maxlength="20" placeholder="ID 입력" name="id">
                </span>
            </div>

            <!-- PW1 -->
            <div>
                <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                <span class="box int_pass">
                    <input type="password" name="pwd" class="int" maxlength="20" placeholder="비밀번호 입력">            
                </span>

            </div>

            <!-- PW2 -->
            <div>
                <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                <span class="box int_pass_check">
                    <input type="password" id="pwd2" class="int" maxlength="20" placeholder="비밀번호 재확인">      
                </span>

            </div>

            <!-- NAME -->
            <div>
                <h3 class="join_title"><label for="name">이름</label></h3>
                <span class="box int_name">
                    <input type="text" name="name" class="int" maxlength="20" placeholder="이름 입력">
                </span>
            </div>

            <!-- ADDRESS -->
            <div>
                <h3 class="join_title"><label for="address">주소</label></h3>
                <span class="box int_mobile">
                    <input type="text" id="address"class="int"  maxlength="16" placeholder="주소 입력" name="adress">
                </span>
            </div>

            <!-- NUMBER -->
            <div>
                <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                <span class="box int_mobile">
                    <input type="tel" id="phone" class="int" maxlength="16" placeholder="전화번호 입력" name="phone">
                </span>

            </div>
            <br>
            <br>

            <!-- SUBMIT-->
            <div class="btn_area">
                <a href="login.jsp">
                <input type="submit" id="btnSubmit" class="btn btn-outline-dark" value="가입하기">
                </a>

            </div>
            </form>



        </div>
        <!-- content-->

    </div>
    <script> function btn(){ alert('회원가입이 완료되었습니다.'); } </script>
</body>
</html>