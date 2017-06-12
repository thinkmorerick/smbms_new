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
            <span>账单管理页面 >> 订单添加页面</span>
        </div>
        <div class="providerAdd">
            <form id="billForm" name="billForm" method="post" action="${pageContext.request.contextPath }/bill.do">
           		<input type="hidden" name="method" value="add">
            	<input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="billId">订单编码：</label>
                    <input type="text" name="billCode" class="text" id="billCode" value="${bill.billCode }" readonly="readonly"> 
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label for="billName">商品名称：</label>
                    <input type="text" name="productName" class="text" id="productName" value="${bill.productName }" > 
								<font color="red"></font>
                </div>
                <div>
                    <label for="billCom">商品单位：</label>
                    <input type="text" name="productUnit" class="text" id="productUnit" value="${bill.productUnit }" >
								<font color="red"></font>

                </div>
                <div>
                    <label for="billNum">商品数量：</label>
                    <input type="text" name="productCount" class="text" id="productCount" value="${bill.productCount }" >
								<font color="red"></font>
                </div>
                <div>
                    <label for="money">总金额：</label>
                    <input type="text" name="totalPrice" class="text" id="totalPrice" value="${bill.totalPrice }" >
								<font color="red"></font>
                </div>
                <div>
                    <label >供应商：</label>
                    <input type="hidden" value="${bill.providerId }" id="pid" />
					<select name="providerId" id="providerId">
		        	</select>
					<font color="red"></font>
                </div>
                <div>
                    <label >是否付款：</label>
                   <c:if test="${bill.isPayment == 1 }">
						<input type="radio" name="isPayment" value="1" checked="checked">未付款
						<input type="radio" name="isPayment" value="2" >已付款
					</c:if>
					<c:if test="${bill.isPayment == 2 }">
						<input type="radio" name="isPayment" value="1">未付款
						<input type="radio" name="isPayment" value="2" checked="checked">已付款
					</c:if>
                </div>
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="billList.html">返回</a>-->
                    <input type="button" name="save" id="save" value="保存"
					class="input-button"/>
					
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">
    版权归北大青鸟
</footer>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/time.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/billmodify.js"></script>

</body>
</html>