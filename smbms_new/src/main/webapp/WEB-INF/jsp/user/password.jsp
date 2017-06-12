<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>超市账单管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/public.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/style.css"/>
</head>
<body>
<!--头部-->
    <header class="publicHeader">
        <h1>超市账单管理系统</h1>
        <div class="publicHeaderR">
            <p><span id="wel"></span><span style="color: #fff21b"> ${userSession.userName }</span> , 欢迎你！</p>
            <a href="${pageContext.request.contextPath }/login.jsp">退出</a>
        </div>
    </header>
<!--时间-->
    <section class="publicTime">
        <span id="time"></span>
    <a href="https://support.microsoft.com/zh-cn/help/17621/internet-explorer-downloads" target="_Blank">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
    </section>
<!--主体内容-->
    <section class="publicMian ">
        <div class="left">
            <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
            <nav>
                <ul class="list">
                <li ><a href="${pageContext.request.contextPath }/bill.do?method=query">账单管理</a></li>
                <li><a href="${pageContext.request.contextPath }/provider.do?method=query">供应商管理</a></li>
                <li><a href="${pageContext.request.contextPath }/user.do?method=query">用户管理</a></li>
                <li id="active"><a href="${pageContext.request.contextPath }/user.do?method=passwordlist">密码修改</a></li>
                <li><a href="${pageContext.request.contextPath }/login.jsp">退出系统</a></li>
            </ul>
            </nav>
        </div>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>密码修改页面</span>
            </div>
            <div class="providerAdd">
            <form id="userForm" name="form1" method="post" action="${pageContext.request.contextPath }/user.do">
			<input type="hidden" name="method" value="savepwd">
			
			<div>${message }</div>
			<div class="content">
				<input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
				<table class="box">
					<tbody>
						<tr>
							<td class="field">旧密码：</td>
							<td>
							<input type="password" name="oldpassword" class="text" id="oldpassword" value="">
								<font color="red"></font>
							</td>
						</tr>
						
						<tr>
							<td class="field">新密码：</td>
							<td>
							<input type="password" name="newpassword" class="text" id="newpassword" value="">
								<font color="red"></font>
							</td>
						</tr>
						
						<tr>
							<td class="field">确认密码：</td>
							<td>
							<input type="password" name="rnewpassword" class="text" id="rnewpassword" value="">
								<font color="red"></font>
							</td>
						</tr>
						
					</tbody>
				</table>
			</div>
			<div class="providerAddBtn">
				<input type="button" name="saveBtn" id="saveBtn" value="保存"
					class="input-button"> 
			</div>

		</form>
            </div>
        </div>
    </section>
    <footer class="footer">
        版权归北大青鸟
    </footer>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/js.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/time.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/pwdmodify.js"></script>

</body>
</html>