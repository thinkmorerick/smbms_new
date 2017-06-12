<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>超市账单管理系统</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/css/public.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/css/style.css" />
</head>
<body>
	<!--头部-->
	<header class="publicHeader">
		<h1>超市账单管理系统</h1>

		<div class="publicHeaderR">
			<p>
				<span id="wel"></span><span style="color: #fff21b">
					${userSession.userName }</span> , 欢迎你！
			</p>
			<a href="${pageContext.request.contextPath }/login.jsp">退出</a>
		</div>
	</header>
	<!--时间-->
	<section class="publicTime">
		<span id="time"></span> <a
			href="https://support.microsoft.com/zh-cn/help/17621/internet-explorer-downloads"
			target="_Blank">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
	</section>
	<!--主体内容-->
	<section class="publicMian ">
		<div class="left">
			<h2 class="leftH2">
				<span class="span1"></span>功能列表 <span></span>
			</h2>
			<nav>
				<ul class="list">
					<li><a
						href="${pageContext.request.contextPath }/bill.do?method=query">账单管理</a></li>
					<li id="active"><a
						href="${pageContext.request.contextPath }/provider.do?method=query">供应商管理</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user.do?method=query">用户管理</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user.do?method=passwordlist">密码修改</a></li>
					<li><a href="${pageContext.request.contextPath }/login.jsp">退出系统</a></li>
				</ul>
			</nav>
		</div>
		<div class="right">
			<div class="location">
				<strong>你现在所在的位置是:</strong> <span>供应商管理页面</span>
			</div>
			<input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
			<input name="rqueryProName" id="rqueryProName" type="hidden" value="${queryProName }">
			<input name="rqueryProCode"  id="rqueryProCode" type="hidden" value="${queryProCode }">
			<input name="rqueryIsPayment"  id="rqueryIsPayment" type="hidden" value="${queryIsPayment }">
			<div class="search">
				<form name="queryProvider" id="queryProvider" method="post" action="${pageContext.request.contextPath }/provider.do">
					<input name="method" value="query" class="input-text" type="hidden">
					<input type="hidden" name="pageIndex" id="pageIndex" value="1"/>
					
					<span>供应商名称：</span> 
					<input name="queryProName" class="input-text" type="text" value="${queryProName }" placeholder="请输入供应商的名称" />
					<input type="button" value="查询" onclick="queryProvider.submit();"/>
				</form>
				<a href="javascript:;"
					onclick="window.location='${pageContext.request.contextPath }/provider.do?method=addpage'">添加供应商</a>
			</div>
			<!--供应商操作表格-->
			<table class="providerTable" cellpadding="0" cellspacing="0">
				<tr class="firstTr">
					<th width="10%">供应商编码</th>
					<th width="20%">供应商名称</th>
					<th width="10%">联系人</th>
					<th width="10%">联系电话</th>
					<th width="10%">传真</th>
					<th width="10%">创建时间</th>
					<th width="30%">操作</th>
				</tr>

				<c:forEach var="provider" items="${providerList }"
					varStatus="status">

					<tr>
						<td><span>${provider.proCode }</span></td>
						<td><span>${provider.proName }</span></td>
						<td><span>${provider.proContact }</span></td>
						<td><span>${provider.proPhone }</span></td>
						<td><span>${provider.proFax }</span></td>
						<td><span> <fmt:formatDate
									value="${provider.createDate }" pattern="yyyy-MM-dd" />
					</span></td>
						<td>
						<a class="viewProvider" href="javascript:;" proid=${provider.id } proname=${provider.proName }><img src="${pageContext.request.contextPath }/static/img/read.png" alt="查看" title="查看" /></a> 
						<a class="modifyProvider" href="javascript:;" proid=${provider.id } proname=${provider.proName }><img src="${pageContext.request.contextPath }/static/img/xiugai.png" alt="修改" title="修改" /></a> 
						<a id="deleteProvider" class="deleteProvider" href="javascript:;" proid=${provider.id } proname=${provider.proName }><img src="${pageContext.request.contextPath }/static/img/schu.png" alt="删除" title="删除" /></a>
						</td>
					</tr>

				</c:forEach>
			</table>

			<!-- 分页部分  -->
			<div class="borspan">
				<a id="autopbn" href="javascript:;" style="display:none"
					recordnum="${pageSupport.recCount }"
					curpage="${pageSupport.currPageNo }"
					totalpage="${pageSupport.totalPageCount }"
					pageNavNum="${pageNavNum }"> </a>
			</div>
		</div>
	</section>

	<!--点击删除按钮后弹出的页面-->
	<div class="zhezhao"></div>
	<div class="remove" id="removeBi">
		<div class="removerChid">
			<h2>提示</h2>
			<div class="removeMain">
				<p>你确定要删除该供应商吗？</p>
				<a href="javascript:;" onclick="delprovider()" id="yes">确定</a> <a
					href="provider.do?method=query">取消</a>
			</div>
		</div>
	</div>


	<footer class="footer"> 版权归北大青鸟 </footer>

	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/js.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/time.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/providerlist.js"></script>

</body>
</html>