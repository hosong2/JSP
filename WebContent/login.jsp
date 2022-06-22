<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
</head>
<style>
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

#content {
    position: absolute;
    left: 50%;
    transform: translate(-50%);
    width: 460px;
    margin-top: 150px;
}

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

.btn_area {
    margin: 30px 0 91px;
}

#btntable {
    margin: 30px 0 91px;
    padding-left: 70px;
}

#btnLogin {
    width: 100px;
    height: 50px;
    border-radius: 5px;
    border-color: white;
    font-family: Dotum, '돋움', Helvetica, sans-serif;
    background-color: darkgray;
    cursor: pointer;
    font-size: 15px;
    font-weight: 200;
}

#btnSignUp {
    width: 100px;
    height: 50px;
    outline: none;
    border-radius: 5px;
    border-color: white;
    font-family: Dotum, '돋움', Helvetica, sans-serif;
    background-color: darkgray;
    cursor: pointer;
    font-size: 15px;
    font-weight: 200;
}
</style>
<body>
<!-- header -->
    <div id="header">
        <h1>로그인</h1>
    </div>

    <!-- wrapper -->
    <div id="wrapper">

        <!-- content -->
        <div id="content">
						<form action="loginPro.jsp" method="post">
            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="id">아이디</label>
                </h3>
                <span class="box int_id">
                    <input type="text" id="id" class="int" maxlength="20" placeholder="ID입력" name="id">
                </span>
            </div>

            <!-- PWD -->
            <div>
                <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                <span class="box int_pass">
                    <input type="text" id="pswd1" class="int" maxlength="20" placeholder="비밀번호 입력" name="pwd">              
                </span>
            </div>
            <!-- BUTTON TABLE -->
            <table id="btntable">
                <tr id="btntr">
                    <!-- LOGIN BUTTON -->
                    <td>
                        <div class="btn_area">
                            <input type="submit" id="btnSignUp" value="로그인">                     
                        </div>
                    </td>
										</form>
                    <!-- SIGNUP BUTTON -->
                    <td>
                        <div class="btn_area">                   		
                            <button type="button" id="btnSignUp" class="btn btn-outline-dark" onclick="location.href='signUp.jsp'">
                                <span>회원가입</span>
                            </button>
                        </div>
                    </td>
                    <br>
                    <td>
                        <div class="btn_area">                   		
                            <button type="button" id="btnSignUp" class="btn btn-outline-dark" onclick="location.href='list.jsp'">
                                <span>회원목록</span>
                            </button>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <script>

</script>
</body>
</html>