<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:if test="${fn:length(NewsTitleMenu) ne 0}">
	<c:forEach items="${NewsTitleMenu}" var='newsTitle'>
		<a class="list-group-item" href="javascript:void(0)"
			onClick="openPage('../../${NewsTitleMenuUrl}&id=${newsTitle.id}&typename=${newsTitle.typename}&typeid=${newsTitle.typeid}&typepath=${newsTitle.typepath}&htmlName=${newsTitle.id}')">
			${newsTitle.title}</a>
	</c:forEach>
</c:if>