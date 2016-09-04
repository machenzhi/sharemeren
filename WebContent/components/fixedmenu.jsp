<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="panel panel-default">
	<div class="panel-heading">业务范围</div>
	<c:if test="${fn:length(fixedDictionaryList) ne 0}">
		<ul class="list-group">
			<c:forEach items="${fixedDictionaryList}" var='typeMenu'>
				<li class="list-group-item" style="cursor: pointer;"
					onClick="openPage('../../${typeMenu.url}&typename=${typeMenu.name}&typeid=${typeMenu.id}&typepath=${typeMenu.abspath}&htmlName=${typeMenu.id}')">
					${typeMenu.name}</li>
			</c:forEach>
		</ul>
	</c:if>
</div>