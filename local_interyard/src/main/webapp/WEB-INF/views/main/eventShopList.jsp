<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags"%>
<link rel="stylesheet" href="/css/mainEvent.css">

<meta charset="UTF-8">
<title>Event Display</title>

<div class="event-container">
	<c:forEach items="${shoplist}" var="vo">
		<div class="dataRow shop">
			<div class="imageDiv">
				<input name="no" value="${vo.no}" type="hidden">
				<img class="card-img-top" src="${vo.image}" alt="Event image">
			</div>
		</div>
	</c:forEach>
</div>

