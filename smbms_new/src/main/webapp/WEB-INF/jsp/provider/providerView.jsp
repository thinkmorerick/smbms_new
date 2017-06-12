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
                <li><a href="${pageContext.request.contextPath }/bill.do?method=query">账单管理</a></li>
                <li id="active"><a href="${pageContext.request.contextPath }/provider.do?method=query">供应商管理</a></li>
                <li><a href="${pageContext.request.contextPath }/user.do?method=query">用户管理</a></li>
                <li><a href="${pageContext.request.contextPath }/user.do?method=passwordlist">密码修改</a></li>
                <li><a href="${pageContext.request.contextPath }/login.jsp">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>供应商管理页面 >> 信息查看</span>
        </div>
        
        <div class="providerView">
				<input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
			
				<table class="box">
					<tbody>
						<tr>
							<td class="field">供应商编号：</td>
							<td>${provider.proCode } 
							</td>
						</tr>
						<tr>
							<td class="field">供应商名称：</td>
							<td>${provider.proName } 
							</td>
						</tr>
						<tr>
							<td class="field">联系人：</td>
							<td>${provider.proContact }
							</td>
						</tr>
						<tr>
							<td class="field">联系电话：</td>
							<td>${provider.proPhone }
							</td>
						</tr>
						<tr>
							<td class="field">联系地址：</td>
							<td>${provider.proAddress }
							</td>
						</tr>
						<tr>
							<td class="field">传真：</td>
							<td>${provider.proFax }
							</td>
						</tr>
						<tr>
							<td class="field">描述：</td>
							<td>${provider.proDesc }
							</td>
						</tr>
					</tbody>
				</table>
			<div class="buttons">
					<a href="provider.do?method=query" name="button"
					id="button" onclick="history.back(-1)" class="input-button">返回</a>
			</div>
			</div>
    </div>
</section>
<footer class="footer">
    版权归北大青鸟
</footer>


</body>
</html>