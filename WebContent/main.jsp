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
<link rel="icon" type="image/png" href="../../img/favicon.png">
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
	<jsp:include page="public/top.jsp" />
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<br />
				<div class="jumbotron">
					<img src="../../img/erweima.png"
						style="width: 120px; height: 120px;" align="right" />
					<h1>ShareMe.Ren</h1>
					<p>晒迷人 为了更好 而更好</p>
					<p>专业定制各种网站，为你展示最美的网络形象！</p>
					<p>
						<a class="btn btn-primary btn-large" href="#">即刻咨询 18103857686</a>
					</p>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="row">
					<div class="col-md-3">
						<div class="thumbnail">
							<img alt="300x200" src="../../img/1.png" />
							<div class="caption">
								<h3>网站开发</h3>
								<p>做最好的互联网名片！</p>
								<p>
									<a class="btn btn-primary" href="../../news/qiantai/getNewsImgList.do?demo=1&typename=%E7%BD%91%E7%AB%99%E5%BC%80%E5%8F%91&typeid=a846d56c74a8464a89d194ef08021317&typepath=0.983dc669958a49a7892c635988b4b76a.a846d56c74a8464a89d194ef08021317&htmlName=a846d56c74a8464a89d194ef08021317">了解</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="thumbnail">
							<img alt="300x200" src="../../img/2.png" />
							<div class="caption">
								<h3>微信开发</h3>
								<p>微信搭建最大的朋友圈！</p>
								<p>
									<a class="btn btn-primary" href="../../news/qiantai/getNewsList.do?demo=1&typename=%E5%BE%AE%E4%BF%A1%E5%BC%80%E5%8F%91&typeid=b34133e0ef504ed4af68f1be4f4b4bda&typepath=0.983dc669958a49a7892c635988b4b76a.b34133e0ef504ed4af68f1be4f4b4bda&htmlName=b34133e0ef504ed4af68f1be4f4b4bda">了解</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="thumbnail">
							<img alt="300x200" src="../../img/3.png" />
							<div class="caption">
								<h3>APP开发</h3>
								<p>做自己的媒体，做自己的事业！</p>
								<p>
									<a class="btn btn-primary" href="../../news/qiantai/getNewsImgList.do?demo=1&typename=APP%E5%BC%80%E5%8F%91&typeid=9052a9d72dba4ff1b76ead6e7fbe3116&typepath=0.983dc669958a49a7892c635988b4b76a.9052a9d72dba4ff1b76ead6e7fbe3116&htmlName=9052a9d72dba4ff1b76ead6e7fbe3116">了解</a>
								</p>
							</div>
						</div>
					</div><div class="col-md-3">
						<div class="thumbnail">
							<img alt="300x200" src="../../img/4.png" />
							<div class="caption">
								<h3>办公软件开发</h3>
								<p>管理自动化，利润最大化！</p>
								<p>
									<a class="btn btn-primary" href="../../news/qiantai/getNewsImgList.do?demo=1&typename=%E5%8A%9E%E5%85%AC%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91&typeid=a54c14b8bfbd4d32a6aea6348f13123d&typepath=0.983dc669958a49a7892c635988b4b76a.a54c14b8bfbd4d32a6aea6348f13123d&htmlName=a54c14b8bfbd4d32a6aea6348f13123d">了解</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<p>
					<strong>晒迷人</strong>始终以技术为发展的根基，以用户的体验为发展的动力，持续为用户提供优秀的网站！<em><small>马晨智</small></em>
				</p>
			</div>
		</div>
	</div>
	<jsp:include page="public/foot.jsp" />
</body>
</html>
