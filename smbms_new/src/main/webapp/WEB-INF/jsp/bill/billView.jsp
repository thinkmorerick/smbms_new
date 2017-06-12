<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
                <li id="active"><a href="${pageContext.request.contextPath }/bill.do?method=query">账单管理</a></li>
                <li><a href="${pageContext.request.contextPath }/provider.do?method=query">供应商管理</a></li>
                <li><a href="${pageContext.request.contextPath }/user.do?method=query">用户管理</a></li>
                <li><a href="${pageContext.request.contextPath }/user.do?method=passwordlist">密码修改</a></li>
                <li><a href="${pageContext.request.contextPath }/login.jsp">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>账单管理页面 >> 信息查看</span>
        </div>
        <div class="providerView">
        <div class="content">
			<table class="box">
			   <tbody><tr>
					<td class="field"><strong>订单编码：</strong></td>
					<td>${bill.billCode }</td>
				</tr>
				 <tr>
					<td class="field"><strong>商品名称：</strong></td>
					<td>${bill.productName }</td>
				</tr>
				 <tr>
					<td class="field"><strong>商品单位：</strong></td>
					<td>${bill.productUnit }</td>
				</tr>
				 <tr>
					<td class="field"><strong>商品数量：</strong></td>
					<td>${bill.productCount }</td>
				</tr>
				<tr>
					<td class="field"><strong>总金额：</strong></td>
					<td>${bill.totalPrice }</td>
				</tr>
				<tr>
					<td class="field"><strong>供应商：</strong></td>
					<td>${bill.providerName }</td>
				</tr>
				<tr>
					<td class="field"><strong>是否付款：</strong></td>
					<td>
					<c:if test="${bill.isPayment == 1}">未付款</c:if>
					<c:if test="${bill.isPayment == 2}">已付款</c:if>
					</td>
				</tr>
			</tbody></table>
		</div>
        
        
            <a href="bill.do?method=query">返回</a>
        </div>
    </div>
</section>
<footer class="footer">
    版权归北大青鸟
</footer>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/time.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/billadd.js"></script>


</body>
</html>