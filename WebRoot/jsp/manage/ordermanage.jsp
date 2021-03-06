<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>订单管理页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/myorder.css">
<style type="text/css">
body {
	background-color: #111;
}

.userMenu a {
	margin-left: 0px;
}

.message-tab {
	height: 40px;
	background-color: #222;
}

.message-tab .tab {
	margin: 6px 0px 0 10px;
	padding: 2px 15px;
	float: left;
	line-height: 30px;
	font-size: 14px;
	color: #FFF;
	cursor: pointer;
}

.message-tab .tab a {
	color: #fff;
}

.message-tab .focus {
	background-color: #000;
	color: #01ff00
}

.message-tab .focus a {
	color: #01ff00
}

.message-tab .tab a:HOVER {
	color: #01ff00
}

.message-box div {
	text-align: left;
}

.message-box {
	border: 1px solid #222;
	border-top: 0;
	margin: 0;
	padding: 10px 0 0 0;
}

.message-box:HOVER {
	background-color: #111;
}

.message-box .avatar-box {
	width: 50px;
	height: 50px;
	margin: 0px 10px 0 0;
}

.message-box .avatar-box img {
	width: 30px;
	height: 30px;
	margin: 10px;
}

.message-box .message {
	margin: -55px 0 0 50px;
}

.message-box .message p {
	font-size: 14px;
	color: #efefef;
	padding: 10px 10px;
}

.message-box .message-time {
	
}

.send-message-box {
	border: 1px solid #222;
	border-top: 0;
	margin: 0;
	padding: 10px 0 0 0;
}

.send-message-box div {
	margin: 0;
}

.send-message-box .send-box {
	margin: 10px;
	border: 0px solid #222;
}

.send-message-box .send-box .message-textarea {
	width: 828px;
	padding: 10px;
	background-color: #111;
	outline: none;
	color: #FFF;
	font-size: 15px;
	font-family: '微软雅黑', '宋体', Verdana, Arial;
	border: 1px solid #222;
	margin: 0;
}

.send-message-box .user-select-box {
	
}

.send-message-box .user-select-box .select-box {
	width: 200px;
	height: 50px;
	border: 1px solid #222;
	float: left;
	margin: 10px 0 10px 10px;
}

.send-message-box .user-select-box .select-box .avatar {
	width: 30px;
	height: 30px;
	margin: 10px;
}

.send-message-box .user-select-box .select-box .name {
	height: 30px;
	margin: -40px 0 0 50px;
	color: #fff;
}

.send-message-box .user-select-box .select-box .userid {
	margin: -4px 0 0 186px;
	width: 15px;
	height: 15px;
	border: 1px solid #FFF;
	background-color: #222;
}
</style>
<style type="text/css">
.neirong {
	width: 400px;
	height: 20px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.pinglun {
	border-collapse: collapse;
	border: 1px solid #222;
}

.pinglun {
	border-collapse: collapse;
}

.pinglun .cptp {
	padding-left: 80px;
	float: left;
}

.pinglun .shanchu {
	float: right;
	padding-top: 40px;
	padding-right: 10px;
}

.pl {
	padding-left: 2px;
	float: left;
}

.mingzi {
	margin-left: 10px;
	float: left;
	width: 196px;
	height: 60px;
	line-height: 60px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.huifu {
	padding-left: 30px;
}

.pagebottom {
	float: right;
	padding-top: 10px;
}
</style>
<style type="text/css">
.biaoge .shoucang img {
	padding-left: 20px;
}

.biaoge .shoucang a {
	padding-left: 15px;
	width: 170px;
	height: 60px;
	line-height: 60px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.tp {
	padding-left: 10px;
	float: left;
}

.mz {
	margin-left: 10px;
	width: 170px;
	height: 60px;
	line-height: 60px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}
#fenye{

font-size:18px;
color:#00ff00;

}
#fenye a{

color:00ff00;
}
</style>
</head>

<body>
	<div class="AreaR">
		<div class="box">
			<div class="box_1">
				<div class="userCenterBox boxCenterList clearfix"
					style="_height:1%; border:0px;">
					<h5>
						<span>订单详情</span>
					</h5>
					<div class="blank"></div>
					<table class="biaoge" width="100%" border="0" cellpadding="5"
						cellspacing="1" bgcolor="#dddddd">
						<tbody>
							<tr class="bg_head" align="center">
								<th width="10%">序号</th>
								<th width="30%">订单号</th>
								<th width="10%">订单金额</th>
								<th width="10%">时间</th>
								<th width="10%">状态</th>
								<th width="10%">订单详情</th>
							</tr>

							<c:forEach items="${orderPageBean.orderdatas}" var="mo"
								varStatus="status">
								<tr class="bg_head" align="center">
									<th width="10%">${status.count }</th>
									<th width="30%">${mo.id }</th>
									<th width="10%">${mo.totalMoney }</th>
									<th width="15%">${mo.ordertime}</th>
									<th width="10%"><c:if test="${mo.paysate == 0 }">
	    								未支付
	    								</c:if> <c:if test="${mo.paysate == 1 }">
	    								已支付
	    								</c:if>
									</th>
									<th width="10%"><a
										href="<c:url value='/OrderServlet?method=3&order_id=${mo.id}&flag=1'/>"
										style="color:#00ff00;">订单详情</a></th>
								</tr>
							</c:forEach>
						</tbody>
					</table>



					<center>
						<div id="fenye">
							第${orderPageBean.pageCode}页/共${orderPageBean.totalPage}页
							<!-- 首页 -->
							<a
								href='<c:url value='/OrderServlet?method=4&pagecode=1'></c:url>'>首页</a>
							<!-- 上一页 -->
							<c:if test="${orderPageBean.pageCode>1 }">
								<!-- 当页码大于第一页 -->
								<a
									href='<c:url value='/OrderServlet?method=4&pagecode=${orderPageBean.pageCode-1}'></c:url>'>上一页</a>
							</c:if>

							<!--【1】 【2】 页码显示  -->
							<!-- 初始化页码 -->
							<c:set var="begin" value="1"></c:set>
							<c:set var="end" value="10"></c:set>

							<!-- 在页码显示的当中会出现几种情况  -->
							<!--第一种，如果总页码就小于10 那么只显示从开始到总页码就可以了  -->
							<c:choose>
								<c:when test="${orderPageBean.totalPage <=10}">
									<c:set var="begin" value="1"></c:set>
									<c:set var="end" value="${orderPageBean.totalPage}"></c:set>
								</c:when>

								<c:otherwise>
									<!--第二种，页码大于10，但是在1-5页是不需要让页码发生变化的 -->
									<!--第三种 页码大于10，但是在当前页码 +5 就大于了总页码，那么页码也不要变化了  -->
									<c:choose>
										<c:when test="${orderPageBean.pageCode - 4 <=1}">
											<c:set var="begin" value="1"></c:set>
											<c:set var="end" value="10"></c:set>
										</c:when>

										<c:when
											test="${orderPageBean.pageCode +5>=orderPageBean.totalPage }">
											<c:set var="begin" value="${orderPageBean.totalPage -9 }"></c:set>
											<!-- 起始页码就直接是 总页码-9  -->
											<c:set var="end" value="${orderPageBean.totalPage }"></c:set>
										</c:when>

										<c:otherwise>
											<!--第四种，是正常情况。 比如现在页码是第六页 ,起始页就是 第二页，最终页就是 第11页 -->
											<c:set var="begin" value="${orderPageBean.pageCode-4}"></c:set>
											<c:set var="end" value="${orderPageBean.pageCode+5 }"></c:set>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>




							<c:forEach var="i" begin="${begin}" end="${end}">
								<!-- 判断当前该页码是不是本页 -->
								<c:choose>
									<c:when test="${orderPageBean.pageCode == i}">${i}</c:when>
									<c:otherwise>
										<a
											href='<c:url value='/OrderServlet?method=4&pagecode=${i}'></c:url>'>${i}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>



							<!--下一页  -->
							<c:if test="${orderPageBean.pageCode< orderPageBean.totalPage }">
								<!-- 当前页码不大于最大的页码 -->
								<a
									href='<c:url value='/OrderServlet?method=4&pagecode=${orderPageBean.pageCode+1 }'></c:url>'>下一页</a>
							</c:if>
							<a
								href='<c:url value='/OrderServlet?method=4&pagecode=${orderPageBean.totalPage}'></c:url>'>尾页</a>

						</div>
					</center>


				</div>
			</div>
		</div>
	</div>

	</div>

</body>
</html>
