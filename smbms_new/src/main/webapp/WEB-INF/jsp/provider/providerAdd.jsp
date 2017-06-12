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
            <span>供应商管理页面 >> 供应商添加页面</span>
        </div>
        <div class="providerAdd">
            <form id="providerForm" name="providerForm" method="post" action="${pageContext.request.contextPath }/provider.do">
			<input type="hidden" name="method" value="add">
            <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
                <!--div的class 为error是验证错误，ok是验证成功-->
              <table class="box">
					<tbody>
						<tr>
							<td class="field">供应商编码：</td>
							<td><input type="text" name="proCode" class="text" id="proCode" value=""> 
								<font color="red"></font>
							</td>
						</tr>
						<tr>
							<td class="field">供应商名称：</td>
							<td><input type="text" name="proName" class="text" id="proName" value=""> 
								<font color="red"></font>
							</td>
						</tr>
						<tr>
							<td class="field">联系人：</td>
							<td><input type="text" name="proContact" class="text" id="proContact" value="">
								<font color="red"></font>
							</td>
						</tr>
						<tr>
							<td class="field">联系电话：</td>
							<td><input type="text" name="proPhone" class="text" id="proPhone" value="">
								<font color="red"></font>
							</td>
						</tr>
						<tr>
							<td class="field">联系地址：</td>
							<td><input type="text" name="proAddress" class="text" id="proAddress" value="">
								<font color="red"></font>
							</td>
						</tr>
						<tr>
							<td class="field">传真：</td>
							<td><input type="text" name="proFax" class="text" id="proFax" value=""> 
								<font color="red"></font>
							</td>
						</tr>
						<tr>
							<td class="field">描述：</td>
							<td><input type="text" name="proDesc" class="text" id="proDesc" value=""> 
								<font color="red"></font>
							</td>

						</tr>
					</tbody>
				</table>
                <div class="providerAddBtn">
				<input type="button" name="saveBtn" id="saveBtn" value="保存" class="input-button"> 
				<input type="button" name="button" id="button" onclick="history.back(-1)" value="返回"
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
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/provideradd.js"></script>

</body>
</html>