<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script type="text/javascript">
	function openPage(requestUrl) {
		var htmlName = "htmlName";
		var htmlNameIdx = requestUrl.indexOf("htmlName");
		if (htmlNameIdx > -1) {
			htmlName = requestUrl.substring(htmlNameIdx + 9);
		}
		var htmlUrl = "../../html/" + htmlName + ".html";
		$.ajax({
			url : htmlUrl,
			success : function(data) {
				//存在静态页面，则打开
				window.location.href = htmlUrl;
			},
			error : function() {
				//不存在静态页面，则动态申请页面
				window.location.href = requestUrl;
			}
		});
	}
</script>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">晒迷人</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				onClick="openPage('../../common/qiantai/gotoPage.do?gotourl=index&htmlName=index')"
				href="javascript:void(0)"><span style="color: white">晒迷人</span></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<c:forEach items="${dictionarys}" var="menu_1">
					<c:if test="${empty menu_1.children}">
						<li><a href="javascript:void(0)"
							onClick="openPage('../../${menu_1.url}&typename=${menu_1.name}&typeid=${menu_1.id}&typepath=${menu_1.abspath}&htmlName=${menu_1.id}')">${menu_1.name}</a></li>
					</c:if>
					<c:if test="${not empty menu_1.children}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">${menu_1.name} <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<c:forEach items="${menu_1.children}" var="menu_2">
									<li><a
										onClick="openPage('../../${menu_2.url}&typename=${menu_2.name}&typeid=${menu_2.id}&typepath=${menu_2.abspath}&htmlName=${menu_2.id}')"
										href="javascript:void(0)">${menu_2.name}</a></li>
								</c:forEach>
							</ul></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<div style="height: 60px;"></div>