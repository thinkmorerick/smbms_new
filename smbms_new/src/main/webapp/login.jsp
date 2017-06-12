<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>系统登录 - 超市账单管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/style.css"/>
    <style type="text/css">
    	#error{
    	color:red;
    	}
    </style>
</head>
<body class="login_bg">
    <section class="loginBox">
        <header class="loginHeader">
            <h1>超市账单管理系统</h1>
        </header>
        <section class="loginCont">
            <form class="loginForm" action="${pageContext.request.contextPath }/login.do">
                <div class="inputbox">
                    <label for="user">用户名：</label>
                    <input id="userCode" type="text" name="userCode" placeholder="请输入用户名" required oninvalid="setCustomValidity('用户名不能为空！');" oninput="setCustomValidity('');"/>
                </div>
                <div class="inputbox">
                    <label for="mima">密码：</label>
                    <input id=userPassword type="password" name="userPassword" placeholder="请输入密码" required oninvalid="setCustomValidity('密码不能为空！');" oninput="setCustomValidity('');"/>
                <span id="error">${error}</span>
                </div>
                <div class="subBtn">
               
                    <input type="submit" value="登录" />
                    <input type="reset" value="重置"/>
                </div>

            </form>
        </section>
    </section>
    

</body>
</html>