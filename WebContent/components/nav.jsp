<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="col-md-12 column">
	<ul class="breadcrumb">
		<c:forEach items="${mianbaoMenu}" var="mianbaomenu"
			varStatus="varstatus">
			<li><a
				onClick="openPage('../../${mianbaomenu.url}&typename=${mianbaomenu.name}&typeid=${mianbaomenu.id}&typepath=${mianbaomenu.abspath}&htmlName=${mianbaomenu.id}')"
				href="javascript:void(0)">${mianbaomenu.name} </a></li>
		</c:forEach>
	</ul>
</div>