<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><script
	src="${basePath}assets/js/amazeui.min.js"></script>
<script type="text/javascript">
	/*
	 分页函数
	 需要在FORM表单中加入隐藏域currentPage，默认值为1。
	 */
	function pageFunction(currentPage) {
		$('#currentPage').val(currentPage);
		//业务自定义查询函数
		query();
	}
	//弹出新窗口
	function openNewWindow(url) {
		window.open(url);
	}
	//全选、取消全选的事件  
	function selectAll() {
		var chkAll = document.getElementById("chkAll").checked;
		var chks = document.getElementsByName("chk");
		for (var j = 0; j < chks.length; j++) {
			chks[j].checked = chkAll;
		}
	}

	function deleteDatas() {
		var ids = "";
		var arrChk = $("input[name='chk']:checked");
		$(arrChk).each(function() {
			ids += this.value + ",";
		});
		if (ids == "") {
			alert('请选择需要操作的数据');
			return;
		}
		ids = ids.substring(0, ids.length - 1);
		deleteData(ids);
	}

	function deleteData(ids) {
		if (confirm("确认要删除吗？")) {
			$.ajax({
				url : "${basePath}news/deleteNewsByIds.do",
				type : "post",
				data : {
					"ids" : ids
				},
				success : function(data) {
					if (data.isSuccess) {
						query();
					}
				}
			});
		}
	}

	function query() {
		var url = "${basePath}news/getNewsListPage.do";
		var jsonParameter = $("#queryForm").serialize();
		initContent(url, jsonParameter);
	}

	function restFrm() {
		$("#title").val("");
	}
</script>
<div class="am-u-sm-12 am-u-md-12" style="padding: 0px;">
	<div data-am-widget="titlebar" class="am-titlebar am-titlebar-multi"
		style="margin: 5px;">
		<h2 class="am-titlebar-title">信息管理</h2>
		<nav class="am-titlebar-nav"></nav>
	</div>
</div>
<div class="am-u-sm-12 am-u-md-12" style="padding: 0px;">
	<form class="am-form" action="" id="queryForm">
		<input type="hidden" id="currentPage" name="currentPage" value="1">
		<div style="margin-top: 2px;"
			class="am-input-group am-u-sm-12 am-u-md-6">
			<span class="am-input-group-label" style="width: 150px">标题</span> <input
				type="text" id="title" name="title" value="${news.title }" />
		</div>
		<div align="center" class="am-u-sm-12 am-u-md-12"
			style="margin-top: 5px;">
			<input type="button" class="am-btn am-btn-success " onclick="query()"
				style="width: 20%" value="查 询" /> <input type="button"
				class="am-btn am-btn-success " onclick="restFrm()"
				style="width: 20%" value="重 置" />
		</div>
	</form>
</div>
<div class="am-u-sm-12 am-u-md-12" style="padding: 0px;">
	<div data-am-widget="titlebar" class="am-titlebar am-titlebar-multi"
		style="margin: 5px;">
		<h2 class="am-titlebar-title">信息列表</h2>
		<nav class="am-titlebar-nav">
			<div class="am-btn-group">
				<input type="button" class="am-btn am-btn-success am-btn-sm"
					onclick="openNewWindow('${basePath}news/getNewsDetailPage.do?viewstate=create');"
					value="新增" /> <input type="button"
					class="am-btn am-btn-success am-btn-sm" onclick="deleteDatas();"
					value="删除" />
			</div>
		</nav>
	</div>
</div>
<table class="am-table am-table-striped am-table-hover table-main">
	<thead>
		<tr>
			<th width="1%"><input type="checkbox" name="chkAll" id="chkAll"
				onclick="selectAll()" /></th>
			<th width="5%">序号</th>
			<th width="10%">图片</th>
			<th width="30%">标题</th>
			<th>作者</th>
			<th width="15%">类型</th>
			<th>发布时间</th>
			<th width="11%">操作</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${newsList}" var="news" varStatus="status">
			<tr>
				<td><input type="checkbox" value="${news.id}" id="chk"
					name="chk" /></td>
				<td>${page.begin+status.index+1 }</td>
				<td><img src="${basePath}${news.attachments[0].smallPath}"
					alt="暂无图片" style="width: 100px; height: 100px;" /></td>
				<td style="cursor: pointer;"
					onclick="openNewWindow('${basePath}news/getNewsDetailPage.do?id=${news.id}&viewstate=read')"><a
					href="javascript:void(0)">${news.title}</a></td>
				<td>${news.author}</td>
				<td>${news.typename}</td>
				<td>${news.publishtime}</td>
				<td>
					<div class="am-dropdown" data-am-dropdown>
						<a class="am-dropdown-toggle" data-am-dropdown-toggle
							href="javascript:;">操作 <span class="am-icon-caret-down"></span>
						</a>
						<ul class="am-dropdown-content">
							<li><a style="cursor: pointer" title="修改此记录"
								onclick="openNewWindow('${basePath}news/getNewsDetailPage.do?id=${news.id}&viewstate=update')"><i
									class="am-icon-edit"></i>&nbsp;修改</a></li>
							<li><a style="cursor: pointer" title="删除此记录"
								onclick="deleteData('${news.id}');"><i
									class="am-icon-trash-o"></i>&nbsp;删除</a></li>
						</ul>
					</div>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<!--分页组件-->
<jsp:include page="../public/pagecomponent.jsp" />