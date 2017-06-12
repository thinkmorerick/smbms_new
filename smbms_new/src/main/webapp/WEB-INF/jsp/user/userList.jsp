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
            <a href="login.jsp">退出</a>
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
                <li id="active"><a href="${pageContext.request.contextPath }/user.do?method=query">用户管理</a></li>
                <li><a href="${pageContext.request.contextPath }/user.do?method=passwordlist">密码修改</a></li>
                <li><a href="${pageContext.request.contextPath }/login.jsp">退出系统</a></li>
            </ul>
            </nav>
        </div>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>用户管理页面</span>
            </div>
            	<input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
            <div class="search">
                <table>
			<tbody>
				<tr>
					<td><form method="post" name="queryUser" id="queryUser" action="${pageContext.request.contextPath }/user.do">
							<input type="hidden" name="rqueryUserName" id="rqueryUserName" type="text" value="${queryUserName }"/>
							<input type="hidden" name="pageQuery" id="pageQuery" value="false"/>
							<input type="hidden" name="pageIndex" id="pageIndex" value="1"/>
							<input name="method" value="query" class="input-text" type="hidden"> 
							<span>用户名：</span><input name="queryUserName" class="input-text" type="text" value="${queryUserName }" placeholder="请输入用户名">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="查询" onclick="queryUser.submit();"/>
						</form>
					</td>
				</tr>
				<tr><a href="${pageContext.request.contextPath }/user.do?method=addpage">添加用户</a></tr>
			</tbody>
		</table>
            </div>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
				<tbody>
                <tr class="firstTr">
                    <th width="10%">用户编码</th>
                    <th width="20%">用户名称</th>
                    <th width="10%">性别</th>
                    <th width="10%">年龄</th>
                    <th width="10%">电话</th>
                    <th width="10%">用户类型</th>
                    <th width="30%">操作</th>
                </tr>
                <c:forEach var="user" items="${userList }" varStatus="status">
						<tr>
							<td>
								<span>${user.userCode }</span>
							</td>
							<td>
								<span>${user.userName }</span>
							</td>
							<td>
								<span>
									<c:if test="${user.gender==1 }">男</c:if>
									<c:if test="${user.gender==2 }">女</c:if>
								</span>
							</td>
							<td>
								<span>${user.age }</span>
							</td>
							<td>
								<span>${user.phone }</span>
							</td>
							<td>
								<span>
									<c:if test="${user.userType==1 }">系统管理员</c:if>
									<c:if test="${user.userType==2 }">经理</c:if>
									<c:if test="${user.userType==3 }">普通员工</c:if>
								</span>
							</td>
							<td>
								<span><a class="viewUser" href="javascript:;" userid=${user.id } username=${user.userName }><img src="${pageContext.request.contextPath }/static/img/read.png" alt="查看" title="查看"/></a></span>
								<span><a class="modifyUser" href="javascript:;" userid=${user.id } username=${user.userName }><img src="${pageContext.request.contextPath }/static/img/xiugai.png" alt="修改" title="修改"/></a></span>
								<span><a id="removeUser" class="deleteUser" href="javascript:;" userid=${user.id } username=${user.userName }><img src="${pageContext.request.contextPath }/static/img/schu.png" alt="删除" title="删除"/></a></span>
							</td>
						</tr>
					</c:forEach>
					</tbody>
            </table>
			<table class="page-bar">
			<tr>
				<td><div class="page-cont">
						<span>共${pageSupport.recCount }条记录&nbsp;&nbsp; ${pageSupport.currPageNo }/${pageSupport.totalPageCount }页</span>
					</div>
				</td>
				<td>
					<div class="page-inner">
						<c:if test="${pageSupport.currPageNo > 1 }">
						<a href="javascript:jump_to(1);">首页</a>
						<a href="javascript:jump_to(${pageSupport.currPageNo - 1 });">上一页</a>
						</c:if>
						<c:if test="${pageSupport.currPageNo < pageSupport.totalPageCount }">
						<a href="javascript:jump_to(${pageSupport.currPageNo + 1 });">下一页</a>
						<a href="javascript:jump_to(${pageSupport.totalPageCount });">最后一页</a>
						</c:if>
						&nbsp;&nbsp;&nbsp;
					</div>
				</td>
				<td>
					<div class="page-go-form">
					 	<label>跳转至</label>
						<label><input type="text" name="custompage" id="custompage" size="2" title="输入页码，按回车快速跳转" value=""> 页
					    <button type="button" class="page-btn" id="page-btn">GO</button>
						</label>
					</div>
				</td>
			</tr>
		</table>
        </div>
    </section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该用户吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

    <footer class="footer">
        版权归北大青鸟
    </footer>

<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/js.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/time.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/userlist.js"></script>

</body>
</html>