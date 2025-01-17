<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<button class="btn btn-outline-dark btn-block mb-3" id="dlvyWriteBtn">+ 배송지 신규 입력</button>

<ul class="list-group">
	<c:forEach items="${list }" var="vo">
		<li class="list-group-item dlvyListItem" data-dlvyaddrno="${vo.dlvyAddrNo }">
			<div class="row">
				<div class="col-md-9">
					<b class="recipientModal">${vo.recipient }(${vo.dlvyName })</b>
					<c:if test="${vo.basic == 1 }">
						<span class="badge badge-secondary basicAddr">기본 배송지</span>
					</c:if>
					<br>
					<span class="telModal">${vo.tel }</span>
				</div>
				<div class="col-md-3 text-right">
					<button class="dlvySelBtn btn btn-dark btn-sm">선택</button>
				</div>				
			</div>		
			<div class="row mt-1">					
				<div class="col">
					<span class="addrModal">${vo.addr } ${vo.addrDetail } (${vo.postNo })</span>
				</div>					
			</div>
			<div class="row mt-2">					
				<div class="col">
					<button class="btn btn-outline-dark btn-sm dlvyUpdateFormBtn">수정</button>
					<button class="btn btn-outline-dark btn-sm dlvyDeleteBtn">삭제</button>
				</div>					
			</div>
			
		</li>		
		
		
	</c:forEach>
</ul>