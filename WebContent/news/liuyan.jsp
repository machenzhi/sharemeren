<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${sysinfo.title}</title>
<meta name="description" content="${sysinfo.description}">
<meta name="keywords" content="${sysinfo.keywords}">
<link rel="icon" type="image/png" href="img/favicon.png">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<jsp:include page="../public/top.jsp" />
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-3 column">
				<jsp:include page="../components/fixedmenu.jsp" />
				<jsp:include page="../components/contactus.jsp" />
			</div>
			<div class="col-md-9 column" style="padding: 0px;">
				<div class="col-md-12 column">
					<!-- 多说评论框 start -->
					<div class="ds-thread" data-thread-key="shareme" data-title="晒迷人"
						data-url="www.shareme.ren"></div>
					<!-- 多说评论框 end -->
					<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
					<script type="text/javascript">
						var duoshuoQuery = {
							short_name : "shareme"
						};
						(function() {
							var ds = document.createElement('script');
							ds.type = 'text/javascript';
							ds.async = true;
							ds.src = (document.location.protocol == 'https:' ? 'https:'
									: 'http:')
									+ '//static.duoshuo.com/embed.js';
							ds.charset = 'UTF-8';
							(document.getElementsByTagName('head')[0] || document
									.getElementsByTagName('body')[0])
									.appendChild(ds);
						})();
					</script>
					<!-- 多说公共JS代码 end -->
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../public/foot.jsp" />
</body>
</html>